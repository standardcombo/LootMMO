Assets {
  Id: 5338087018861399484
  Name: "Other Components"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4594542242463950141
      Objects {
        Id: 4594542242463950141
        Name: "Other Components"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15254819974321496454
        ChildIds: 8942707841303415082
        ChildIds: 11947022884869380007
        ChildIds: 7620917565111741123
        ChildIds: 1458005628960555221
        ChildIds: 743973740844333387
        ChildIds: 17348995099918167096
        ChildIds: 15470095652942389976
        ChildIds: 13835286553656767385
        ChildIds: 6356586427490150051
        ChildIds: 15061449345327851489
        ChildIds: 1589501496425008203
        ChildIds: 18423683221421421492
        ChildIds: 12264270491021767581
        ChildIds: 11495206360820807684
        ChildIds: 5199740351189178042
        ChildIds: 3357013762079959011
        ChildIds: 9524654899406253919
        ChildIds: 13836523838949576650
        ChildIds: 9360743438752598428
        ChildIds: 16914859641837291799
        ChildIds: 6687489877449245621
        ChildIds: 12498343613210813967
        ChildIds: 6234568694236918399
        ChildIds: 16012557571510256135
        ChildIds: 9231196837641742209
        ChildIds: 17699998976495263131
        ChildIds: 5825506913699031339
        ChildIds: 6971558339717546766
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
          FilePartitionName: "Other Components"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15254819974321496454
        Name: "App State Machine"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 7285454893618858797
            value {
              Overrides {
                Name: "Name"
                String: "App State Machine"
              }
            }
          }
          TemplateAsset {
            Id: 17121829851945685150
          }
        }
      }
      Objects {
        Id: 8942707841303415082
        Name: "Combat Dependencies"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 8014650375856875642
            value {
              Overrides {
                Name: "Name"
                String: "Combat Dependencies"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 2087257134469971969
          }
        }
      }
      Objects {
        Id: 11947022884869380007
        Name: "Misc Client"
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
        ParentId: 4594542242463950141
        ChildIds: 1944345108035126420
        ChildIds: 8347341346197361077
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
        Id: 1944345108035126420
        Name: "SocialKitNameplateController"
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
        ParentId: 11947022884869380007
        UnregisteredParameters {
          Overrides {
            Name: "cs:ShowOnSelf"
            Bool: true
          }
          Overrides {
            Name: "cs:MaxDistanceOnTeammates"
            Float: 0
          }
          Overrides {
            Name: "cs:ShowOnDeadPlayers"
            Bool: false
          }
          Overrides {
            Name: "cs:Scale"
            Float: 1
          }
          Overrides {
            Name: "cs:NameplateTemplate"
            AssetReference {
              Id: 9863662204509797960
            }
          }
          Overrides {
            Name: "cs:ShowOnSelf:tooltip"
            String: "Show a nameplate on the local player"
          }
          Overrides {
            Name: "cs:ShowOnSelf:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ShowOnSelf:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxDistanceOnTeammates:tooltip"
            String: "Only show nameplates on teammates up to this distance away. 0 means always show them."
          }
          Overrides {
            Name: "cs:MaxDistanceOnTeammates:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxDistanceOnTeammates:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ShowOnDeadPlayers:tooltip"
            String: "Show nameplates even on dead players"
          }
          Overrides {
            Name: "cs:ShowOnDeadPlayers:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ShowOnDeadPlayers:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Scale:tooltip"
            String: "Overall scale factor for nameplates"
          }
          Overrides {
            Name: "cs:Scale:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Scale:ml"
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
        Script {
          ScriptAsset {
            Id: 13713889337716467688
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8347341346197361077
        Name: "GlobalAudioController"
        Transform {
          Location {
            X: 2419.76221
            Y: -1055.86011
            Z: -4132.96045
          }
          Rotation {
            Yaw: 124.999992
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11947022884869380007
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
            Id: 4171342585748687683
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7620917565111741123
        Name: "PlayerControlStacks"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 14651507380374460243
            value {
              Overrides {
                Name: "Name"
                String: "PlayerControlStacks"
              }
            }
          }
          TemplateAsset {
            Id: 6930416641467149122
          }
        }
      }
      Objects {
        Id: 1458005628960555221
        Name: "Misc Server"
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
        ParentId: 4594542242463950141
        ChildIds: 5137510313917662838
        ChildIds: 3201941532956267306
        ChildIds: 11901659112194041682
        ChildIds: 13061639279866832343
        ChildIds: 6183915316576703281
        ChildIds: 6211806015250930564
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5137510313917662838
        Name: "PlayerJoinMessageChat"
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
        ParentId: 1458005628960555221
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
            Id: 7340036351095563195
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3201941532956267306
        Name: "ItemFactory"
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
        ParentId: 1458005628960555221
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
            Id: 11974960246926030049
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11901659112194041682
        Name: "SupportAbilities"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.02452814e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1458005628960555221
        UnregisteredParameters {
          Overrides {
            Name: "cs:channelAbility"
            AssetReference {
              Id: 5095812687312647724
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
            Id: 8716198136127297204
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13061639279866832343
        Name: "SafeZoneAppStates"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -1.36603758e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1458005628960555221
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
            Id: 11333987766339350641
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6183915316576703281
        Name: "RewardsAdapter"
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
        ParentId: 1458005628960555221
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
            Id: 14343187592492468620
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6211806015250930564
        Name: "LootCoinsAdapter_Server"
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
        ParentId: 1458005628960555221
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
            Id: 8104924942521878347
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 743973740844333387
        Name: "Respawn Zone (under the world)"
        Transform {
          Location {
            Z: -1700
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        ChildIds: 3356153302303433897
        ChildIds: 839751471443602817
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
        Id: 3356153302303433897
        Name: "PlayerTriggerBroadcastEvent"
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
        ParentId: 743973740844333387
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 839751471443602817
            }
          }
          Overrides {
            Name: "cs:EventID"
            String: "SpawnPlayerAt"
          }
          Overrides {
            Name: "cs:AdditionalParam"
            String: "Social"
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
            Id: 13872004245301301589
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 839751471443602817
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 900
            Y: 900
            Z: 1
          }
        }
        ParentId: 743973740844333387
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
        Id: 17348995099918167096
        Name: "MMO Portal"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 7994230572995548289
            value {
              Overrides {
                Name: "Name"
                String: "MMO Portal"
              }
            }
          }
          TemplateAsset {
            Id: 14735854669174090622
          }
        }
      }
      Objects {
        Id: 15470095652942389976
        Name: "Found Item Cinematic"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 9673760375168532882
            value {
              Overrides {
                Name: "Name"
                String: "Found Item Cinematic"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 16293405889891577506
          }
        }
      }
      Objects {
        Id: 13835286553656767385
        Name: "Loot Drop Factory 3.0"
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
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 12522389637121468714
            value {
              Overrides {
                Name: "Name"
                String: "Loot Drop Factory 3.0"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 15438156706895969314
          }
        }
      }
      Objects {
        Id: 6356586427490150051
        Name: "Dependencies"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 7449135717838944500
            value {
              Overrides {
                Name: "Name"
                String: "Dependencies"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: 150
                  Y: -150.000122
                  Z: -50
                }
              }
            }
          }
          TemplateAsset {
            Id: 7454552000980805838
          }
        }
      }
      Objects {
        Id: 15061449345327851489
        Name: "Character Equipper"
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
        ParentId: 4594542242463950141
        ChildIds: 18308429674000462476
        ChildIds: 8341816122689000
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
          FilePartitionName: "Equpper"
        }
        InstanceHistory {
          SelfId: 5619348408145541259
          SubobjectId: 12245008530248017421
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
          WasRoot: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18308429674000462476
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
        ParentId: 15061449345327851489
        ChildIds: 2989650064419446092
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
        NetworkContext {
          Type: Server
        }
        InstanceHistory {
          SelfId: 17083715520028678186
          SubobjectId: 648906731283760812
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2989650064419446092
        Name: "Equipper_Server"
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
        ParentId: 18308429674000462476
        UnregisteredParameters {
          Overrides {
            Name: "cs:EquipmentContainer"
            AssetReference {
              Id: 136401786372049287
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
            Id: 17586864369691218257
          }
        }
        InstanceHistory {
          SelfId: 770535744553150995
          SubobjectId: 17196313300345861269
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8341816122689000
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
        ParentId: 15061449345327851489
        ChildIds: 13870899250638274395
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
        InstanceHistory {
          SelfId: 3779973589609071849
          SubobjectId: 15015498174232369775
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13870899250638274395
        Name: "Equipper_Client"
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
        ParentId: 8341816122689000
        ChildIds: 11238853091781353742
        ChildIds: 16199093046582092233
        ChildIds: 16620942441661311265
        UnregisteredParameters {
          Overrides {
            Name: "cs:RenderRoot"
            ObjectReference {
              SubObjectId: 16620942441661311265
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
            Id: 10737690191975389021
          }
        }
        InstanceHistory {
          SelfId: 13375099891703343658
          SubobjectId: 6739930995374666924
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11238853091781353742
        Name: "appstateHook"
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
        ParentId: 13870899250638274395
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 16620942441661311265
            }
          }
          Overrides {
            Name: "cs:Adventure"
            Bool: true
          }
          Overrides {
            Name: "cs:SocialHub"
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
            Id: 14793085226451615550
          }
        }
        InstanceHistory {
          SelfId: 4390224255566884403
          SubobjectId: 15634765386635440309
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16199093046582092233
        Name: "AbilityDisplayClient"
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
        ParentId: 13870899250638274395
        UnregisteredParameters {
          Overrides {
            Name: "cs:AbilityDisplay"
            ObjectReference {
              SubObjectId: 16620942441661311265
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
            Id: 12821839503957755810
          }
        }
        InstanceHistory {
          SelfId: 16912897535646647901
          SubobjectId: 1054479240003066075
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16620942441661311265
        Name: "AbilityDisplay"
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
        ParentId: 13870899250638274395
        ChildIds: 17991453835416795348
        ChildIds: 6423888954247275333
        ChildIds: 6497398653711431811
        ChildIds: 11152330515039168489
        ChildIds: 3496805744483139616
        ChildIds: 5186998242751867380
        ChildIds: 4803141778977921387
        ChildIds: 16843880431039982457
        ChildIds: 3514345731043530125
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
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            ContentType {
              Value: "mc:ecanvascontenttype:dynamic"
            }
            Opacity: 1
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
            }
            RedrawTime: 30
            UseSafeZoneAdjustment: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12401347528891462189
          SubobjectId: 5192230512577096875
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17991453835416795348
        Name: "Shift"
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
        ParentId: 16620942441661311265
        ChildIds: 6409938807262792262
        ChildIds: 15829434000320001781
        ChildIds: 7470920786891399667
        ChildIds: 9290707775323745966
        ChildIds: 8176909845142935034
        ChildIds: 2211364296794606672
        ChildIds: 12180641360854994474
        ChildIds: 2987741152470084134
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 17991453835416795348
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 7248771236196741985
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 7470920786891399667
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 8745938967450602858
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 18090847114050450112
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 7388084346026155981
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 14686949509532740110
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 2211364296794606672
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 6409938807262792262
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 12180641360854994474
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 7731492441303844806
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 6173785384896505795
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -250
          UIY: -50
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12032288605314230432
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6409938807262792262
        Name: "Active Flash"
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
        ParentId: 17991453835416795348
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17588806149190463796
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15829434000320001781
        Name: "Cutout"
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
        ParentId: 17991453835416795348
        ChildIds: 16075751537504626408
        ChildIds: 425414978052274737
        ChildIds: 7248771236196741985
        ChildIds: 18090847114050450112
        ChildIds: 1306883163891515849
        ChildIds: 17617011104880733813
        ChildIds: 6173785384896505795
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13816774173809237059
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16075751537504626408
        Name: "BG_SHADOW"
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
        ParentId: 15829434000320001781
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1674374814452009524
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 425414978052274737
        Name: "BG"
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
        ParentId: 15829434000320001781
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 200
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7160644594715467536
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7248771236196741985
        Name: "Icon"
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
        ParentId: 15829434000320001781
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 17752702521577453302
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3034888719355582503
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18090847114050450112
        Name: "Cooldown Indicator"
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
        ParentId: 15829434000320001781
        ChildIds: 16268972382330188078
        ChildIds: 11140876924566461755
        ChildIds: 8745938967450602858
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12653315430060870315
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16268972382330188078
        Name: "RightClip"
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
        ParentId: 18090847114050450112
        ChildIds: 7388084346026155981
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13816929790704841907
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7388084346026155981
        Name: "RightShadow"
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
        ParentId: 16268972382330188078
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15785566932652545970
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11140876924566461755
        Name: "LeftClip"
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
        ParentId: 18090847114050450112
        ChildIds: 14686949509532740110
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2452456104550751121
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14686949509532740110
        Name: "LeftShadow"
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
        ParentId: 11140876924566461755
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3021415694255520856
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8745938967450602858
        Name: "CountdownTime"
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
        ParentId: 18090847114050450112
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12387239141657977818
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1306883163891515849
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 15829434000320001781
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13214564848539799101
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17617011104880733813
        Name: "MAKRO_BG"
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
        ParentId: 15829434000320001781
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11112307980820931925
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6173785384896505795
        Name: "Text Panel"
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
        ParentId: 15829434000320001781
        ChildIds: 15588832636226426184
        ChildIds: 18288857111787571961
        ChildIds: 1526876321005995963
        ChildIds: 16974849076839592242
        ChildIds: 14473891002550044095
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8916456830458850952
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15588832636226426184
        Name: "MAKRO_TEXT"
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
        ParentId: 6173785384896505795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 656312788739058855
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18288857111787571961
        Name: "MAKRO_TEXT"
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
        ParentId: 6173785384896505795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8462070595775848546
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1526876321005995963
        Name: "MAKRO_TEXT"
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
        ParentId: 6173785384896505795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15004588854181662845
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16974849076839592242
        Name: "MAKRO_TEXT"
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
        ParentId: 6173785384896505795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 928312048837161650
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14473891002550044095
        Name: "MAKRO_TEXT"
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
        ParentId: 6173785384896505795
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14009637966266029520
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7470920786891399667
        Name: "AbilityName"
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
        ParentId: 17991453835416795348
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12327038635555705785
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9290707775323745966
        Name: "Frame"
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
        ParentId: 17991453835416795348
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16886716027105398436
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8176909845142935034
        Name: "Ability Level"
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
        ParentId: 17991453835416795348
        ChildIds: 12243516207966570824
        ChildIds: 7731492441303844806
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17212903349477750175
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12243516207966570824
        Name: "UI Panel"
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
        ParentId: 8176909845142935034
        ChildIds: 17168523732472669574
        ChildIds: 5527096991942554906
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5810262396963899241
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17168523732472669574
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 12243516207966570824
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16154061839065432871
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5527096991942554906
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 12243516207966570824
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11399921855414072555
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7731492441303844806
        Name: "LevelText"
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
        ParentId: 8176909845142935034
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10995935036179745285
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2211364296794606672
        Name: "Ability Active"
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
        ParentId: 17991453835416795348
        ChildIds: 7834907060722754601
        ChildIds: 2088382662540447038
        ChildIds: 8490048696034478914
        ChildIds: 914220641487189861
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 7408535638932050685
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7834907060722754601
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 2211364296794606672
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14079164289725537875
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2088382662540447038
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 2211364296794606672
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17280105243342044791
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8490048696034478914
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 2211364296794606672
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6979817578673003179
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 914220641487189861
        Name: "Text Panel"
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
        ParentId: 2211364296794606672
        ChildIds: 18228127347895685121
        ChildIds: 1167994692321611749
        ChildIds: 3651404647616409710
        ChildIds: 6037488057939567812
        ChildIds: 13710243734022478154
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13694451275061852848
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18228127347895685121
        Name: "MAKRO_TEXT"
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
        ParentId: 914220641487189861
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11799289335158839595
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1167994692321611749
        Name: "MAKRO_TEXT"
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
        ParentId: 914220641487189861
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3747800672871550204
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3651404647616409710
        Name: "MAKRO_TEXT"
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
        ParentId: 914220641487189861
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8306699370541575927
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6037488057939567812
        Name: "MAKRO_TEXT"
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
        ParentId: 914220641487189861
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14943532754478442842
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13710243734022478154
        Name: "MAKRO_TEXT"
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
        ParentId: 914220641487189861
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 66427906455669152
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12180641360854994474
        Name: "Duration Indicator"
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
        ParentId: 17991453835416795348
        ChildIds: 5594130715961151516
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8213588968798531850
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5594130715961151516
        Name: "Shading"
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
        ParentId: 12180641360854994474
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8068442466887326493
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2987741152470084134
        Name: "UI Image"
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
        ParentId: 17991453835416795348
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5813100316908714399
          SubobjectId: 14892923694449335148
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 12542309962507280698
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6423888954247275333
        Name: "1"
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
        ParentId: 16620942441661311265
        ChildIds: 12316367814484778063
        ChildIds: 3705487963494656186
        ChildIds: 11790522123555531835
        ChildIds: 9833157618100833760
        ChildIds: 12135753123117436827
        ChildIds: 7854417836407316824
        ChildIds: 14870920980307051155
        ChildIds: 12768028192498079327
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 6423888954247275333
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 13275830517301425567
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 11790522123555531835
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 4610980123919595458
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 16933533911763147376
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 4156424606169119491
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 10198506537969866690
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 7854417836407316824
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 12316367814484778063
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 14870920980307051155
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 7350687572340921697
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 17356303387202196701
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -275
          UIY: -175
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10653192420082848287
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12316367814484778063
        Name: "Active Flash"
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
        ParentId: 6423888954247275333
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13923730010526714763
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3705487963494656186
        Name: "Cutout"
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
        ParentId: 6423888954247275333
        ChildIds: 12002175857512080826
        ChildIds: 10720398065890306986
        ChildIds: 13275830517301425567
        ChildIds: 16933533911763147376
        ChildIds: 4663181154440633083
        ChildIds: 3998263013622479713
        ChildIds: 17356303387202196701
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9985591175431644924
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12002175857512080826
        Name: "BG_SHADOW"
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
        ParentId: 3705487963494656186
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2454580172592377995
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10720398065890306986
        Name: "BG"
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
        ParentId: 3705487963494656186
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 200
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6229394166271845807
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13275830517301425567
        Name: "Icon"
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
        ParentId: 3705487963494656186
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 17752702521577453302
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2248122605667590808
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16933533911763147376
        Name: "Cooldown Indicator"
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
        ParentId: 3705487963494656186
        ChildIds: 16109520342666340571
        ChildIds: 2699113681862660373
        ChildIds: 4610980123919595458
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11147926383788781588
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16109520342666340571
        Name: "RightClip"
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
        ParentId: 16933533911763147376
        ChildIds: 4156424606169119491
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9985431300127411724
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4156424606169119491
        Name: "RightShadow"
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
        ParentId: 16109520342666340571
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17166984908753104141
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2699113681862660373
        Name: "LeftClip"
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
        ParentId: 16933533911763147376
        ChildIds: 10198506537969866690
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1667501166481400110
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10198506537969866690
        Name: "LeftShadow"
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
        ParentId: 2699113681862660373
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2072431243843323623
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4610980123919595458
        Name: "CountdownTime"
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
        ParentId: 16933533911763147376
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11440454714152884581
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4663181154440633083
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 3705487963494656186
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9389838217337123970
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3998263013622479713
        Name: "MAKRO_BG"
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
        ParentId: 3705487963494656186
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12617434238988443626
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17356303387202196701
        Name: "Text Panel"
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
        ParentId: 3705487963494656186
        ChildIds: 11115711224189696121
        ChildIds: 8795646943730584662
        ChildIds: 9989823796062808997
        ChildIds: 1959337370807136872
        ChildIds: 17341725698471627032
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5661418985087489079
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11115711224189696121
        Name: "MAKRO_TEXT"
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
        ParentId: 17356303387202196701
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4339017776359691800
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8795646943730584662
        Name: "MAKRO_TEXT"
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
        ParentId: 17356303387202196701
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4630730606939953885
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9989823796062808997
        Name: "MAKRO_TEXT"
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
        ParentId: 17356303387202196701
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16507938644881353410
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1959337370807136872
        Name: "MAKRO_TEXT"
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
        ParentId: 17356303387202196701
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4165546322498635789
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17341725698471627032
        Name: "MAKRO_TEXT"
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
        ParentId: 17356303387202196701
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17816454726926790511
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11790522123555531835
        Name: "AbilityName"
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
        ParentId: 6423888954247275333
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11402701937032849670
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9833157618100833760
        Name: "Frame"
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
        ParentId: 6423888954247275333
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16101866672764449819
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12135753123117436827
        Name: "Ability Level"
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
        ParentId: 6423888954247275333
        ChildIds: 12451432667635388501
        ChildIds: 7350687572340921697
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15838171199710465824
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12451432667635388501
        Name: "UI Panel"
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
        ParentId: 12135753123117436827
        ChildIds: 2775629292679884895
        ChildIds: 7415403143792948834
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7318009031581760982
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2775629292679884895
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 12451432667635388501
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15348893200066574744
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7415403143792948834
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 12451432667635388501
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12328692127880629844
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7350687572340921697
        Name: "LevelText"
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
        ParentId: 12135753123117436827
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12517069089230041274
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7854417836407316824
        Name: "Ability Active"
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
        ParentId: 6423888954247275333
        ChildIds: 8472332281302277147
        ChildIds: 15399737797272777283
        ChildIds: 10783695851901915440
        ChildIds: 14278828358719853220
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 6051887121739671618
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8472332281302277147
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 7854417836407316824
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17748622355886023916
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15399737797272777283
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 7854417836407316824
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15772657606085330120
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10783695851901915440
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 7854417836407316824
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6192928564753784852
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14278828358719853220
        Name: "Text Panel"
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
        ParentId: 7854417836407316824
        ChildIds: 12892431553691248635
        ChildIds: 18130935247574081346
        ChildIds: 2858257045710278720
        ChildIds: 14543157661228190590
        ChildIds: 12313990953405330674
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10025169229267124239
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12892431553691248635
        Name: "MAKRO_TEXT"
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
        ParentId: 14278828358719853220
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10850164971898315668
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18130935247574081346
        Name: "MAKRO_TEXT"
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
        ParentId: 14278828358719853220
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 85045533452449347
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2858257045710278720
        Name: "MAKRO_TEXT"
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
        ParentId: 14278828358719853220
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5074338236307297352
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14543157661228190590
        Name: "MAKRO_TEXT"
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
        ParentId: 14278828358719853220
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 18036616826414830565
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12313990953405330674
        Name: "MAKRO_TEXT"
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
        ParentId: 14278828358719853220
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3875074218754749215
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14870920980307051155
        Name: "Duration Indicator"
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
        ParentId: 6423888954247275333
        ChildIds: 2580792705941498562
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4958602874555567029
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2580792705941498562
        Name: "Shading"
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
        ParentId: 14870920980307051155
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6544896842036863394
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12768028192498079327
        Name: "UI Image"
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
        ParentId: 6423888954247275333
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7314056200220164896
          SubobjectId: 14892923694449335148
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1612014657604295062
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6497398653711431811
        Name: "2"
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
        ParentId: 16620942441661311265
        ChildIds: 8150131655907216489
        ChildIds: 2614917338940897755
        ChildIds: 13663259437513293215
        ChildIds: 1878125742471542306
        ChildIds: 13693760590894616989
        ChildIds: 3507727495494813242
        ChildIds: 2152868127499129540
        ChildIds: 14919343821122782712
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 6497398653711431811
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 17835545720865247442
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 13663259437513293215
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 7079228853551821737
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 3047725523986218849
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 4590388665004594408
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 7171247602090255700
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 3507727495494813242
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 8150131655907216489
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 2152868127499129540
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 1092561757139878042
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 18304347135488359623
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -175
          UIY: -275
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6546230572724765638
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8150131655907216489
        Name: "Active Flash"
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
        ParentId: 6497398653711431811
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 591197204023597650
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2614917338940897755
        Name: "Cutout"
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
        ParentId: 6497398653711431811
        ChildIds: 8936691937238099982
        ChildIds: 2488511350282349988
        ChildIds: 17835545720865247442
        ChildIds: 3047725523986218849
        ChildIds: 9401974444573686053
        ChildIds: 5439739885000777307
        ChildIds: 18304347135488359623
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4871960560897570597
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8936691937238099982
        Name: "BG_SHADOW"
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
        ParentId: 2614917338940897755
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16942321606468182354
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2488511350282349988
        Name: "BG"
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
        ParentId: 2614917338940897755
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 200
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11492092134809793654
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17835545720865247442
        Name: "Icon"
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
        ParentId: 2614917338940897755
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 17752702521577453302
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15437692514419897153
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3047725523986218849
        Name: "Cooldown Indicator"
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
        ParentId: 2614917338940897755
        ChildIds: 13493825995415866545
        ChildIds: 15053997872688878556
        ChildIds: 7079228853551821737
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6033204945271693773
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13493825995415866545
        Name: "RightClip"
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
        ParentId: 3047725523986218849
        ChildIds: 4590388665004594408
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4871835731544940501
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4590388665004594408
        Name: "RightShadow"
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
        ParentId: 13493825995415866545
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2824387828427504852
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15053997872688878556
        Name: "LeftClip"
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
        ParentId: 3047725523986218849
        ChildIds: 7171247602090255700
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16009025004227244279
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7171247602090255700
        Name: "LeftShadow"
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
        ParentId: 15053997872688878556
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15406142702094391102
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7079228853551821737
        Name: "CountdownTime"
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
        ParentId: 3047725523986218849
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6326419375249508540
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9401974444573686053
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 2614917338940897755
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5422391186376090971
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5439739885000777307
        Name: "MAKRO_BG"
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
        ParentId: 2614917338940897755
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7355923567908884019
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18304347135488359623
        Name: "Text Panel"
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
        ParentId: 2614917338940897755
        ChildIds: 1334914949859921038
        ChildIds: 5733299596358800179
        ChildIds: 12889144217409372028
        ChildIds: 11209997151458195099
        ChildIds: 17716051036055464393
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9772312595773588974
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1334914949859921038
        Name: "MAKRO_TEXT"
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
        ParentId: 18304347135488359623
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17669897019380303809
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5733299596358800179
        Name: "MAKRO_TEXT"
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
        ParentId: 18304347135488359623
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9893551750890949380
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12889144217409372028
        Name: "MAKRO_TEXT"
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
        ParentId: 18304347135488359623
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3177472786016467739
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11209997151458195099
        Name: "MAKRO_TEXT"
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
        ParentId: 18304347135488359623
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17348325749388777940
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17716051036055464393
        Name: "MAKRO_TEXT"
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
        ParentId: 18304347135488359623
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4489982417732320950
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13663259437513293215
        Name: "AbilityName"
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
        ParentId: 6497398653711431811
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6283037058917447903
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1878125742471542306
        Name: "Frame"
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
        ParentId: 6497398653711431811
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1619622926987863490
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13693760590894616989
        Name: "Ability Level"
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
        ParentId: 6497398653711431811
        ChildIds: 6839464026403102068
        ChildIds: 1092561757139878042
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1351960456791809785
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6839464026403102068
        Name: "UI Panel"
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
        ParentId: 13693760590894616989
        ChildIds: 7456368412352685140
        ChildIds: 7088672222743387981
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12430381806877158415
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7456368412352685140
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 6839464026403102068
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2021382990613162049
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7088672222743387981
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 6839464026403102068
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7068131602363654029
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1092561757139878042
        Name: "LevelText"
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
        ParentId: 13693760590894616989
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7258338124314960227
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3507727495494813242
        Name: "Ability Active"
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
        ParentId: 6497398653711431811
        ChildIds: 1833551885379039367
        ChildIds: 2546406332633258134
        ChildIds: 4847857034543862720
        ChildIds: 4486619540486753753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 11165482649612335515
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1833551885379039367
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 3507727495494813242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4557812057307051317
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2546406332633258134
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 3507727495494813242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1435769305025713425
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4847857034543862720
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 3507727495494813242
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11312742793977737677
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4486619540486753753
        Name: "Text Panel"
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
        ParentId: 3507727495494813242
        ChildIds: 1111756249219904420
        ChildIds: 268598324955081864
        ChildIds: 12138167958390514996
        ChildIds: 13404265309988207570
        ChildIds: 3166979249964370835
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4769261812254708182
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1111756249219904420
        Name: "MAKRO_TEXT"
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
        ParentId: 4486619540486753753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6889622992150688333
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 268598324955081864
        Name: "MAKRO_TEXT"
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
        ParentId: 4486619540486753753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14420939851245905818
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12138167958390514996
        Name: "MAKRO_TEXT"
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
        ParentId: 4486619540486753753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10332655747340731793
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13404265309988207570
        Name: "MAKRO_TEXT"
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
        ParentId: 4486619540486753753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3693430415452389948
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3166979249964370835
        Name: "MAKRO_TEXT"
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
        ParentId: 4486619540486753753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 18214909218434409158
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2152868127499129540
        Name: "Duration Indicator"
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
        ParentId: 6497398653711431811
        ChildIds: 13758203325591565201
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10222928295406492268
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13758203325591565201
        Name: "Shading"
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
        ParentId: 2152868127499129540
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10654242476770799739
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14919343821122782712
        Name: "UI Image"
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
        ParentId: 6497398653711431811
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12434406999716664057
          SubobjectId: 14892923694449335148
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 17707264313769936259
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11152330515039168489
        Name: "3"
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
        ParentId: 16620942441661311265
        ChildIds: 15857916024041774081
        ChildIds: 7884410841056508999
        ChildIds: 16156256545224420907
        ChildIds: 16751586780387222895
        ChildIds: 13499514225220202304
        ChildIds: 9002628445532299685
        ChildIds: 16173163980599119137
        ChildIds: 15988477615564520522
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 11152330515039168489
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 15478098563795260149
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 16156256545224420907
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 4689653188824680721
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 17126862933748394046
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 15539080401853510543
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 2220310457011356403
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 9002628445532299685
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 15857916024041774081
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 16173163980599119137
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 17239819882645519126
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 13645784501692024059
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -375
          UIY: -100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 18927405367040577
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15857916024041774081
        Name: "Active Flash"
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
        ParentId: 11152330515039168489
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5958129144543052757
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7884410841056508999
        Name: "Cutout"
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
        ParentId: 11152330515039168489
        ChildIds: 10540962184444351291
        ChildIds: 8414826180383727068
        ChildIds: 15478098563795260149
        ChildIds: 17126862933748394046
        ChildIds: 11899630731777212129
        ChildIds: 1386975727305569801
        ChildIds: 13645784501692024059
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1803535569374998178
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10540962184444351291
        Name: "BG_SHADOW"
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
        ParentId: 7884410841056508999
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12791608217525680341
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8414826180383727068
        Name: "BG"
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
        ParentId: 7884410841056508999
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 200
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14260578618328886769
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15478098563795260149
        Name: "Icon"
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
        ParentId: 7884410841056508999
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 17752702521577453302
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10134910978804394694
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17126862933748394046
        Name: "Cooldown Indicator"
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
        ParentId: 7884410841056508999
        ChildIds: 9909592989890858119
        ChildIds: 3130308349358130474
        ChildIds: 4689653188824680721
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 658057385162537034
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9909592989890858119
        Name: "RightClip"
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
        ParentId: 17126862933748394046
        ChildIds: 15539080401853510543
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1803657098264397394
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15539080401853510543
        Name: "RightShadow"
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
        ParentId: 9909592989890858119
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9055016595553281363
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3130308349358130474
        Name: "LeftClip"
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
        ParentId: 17126862933748394046
        ChildIds: 2220310457011356403
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9561325860236847472
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2220310457011356403
        Name: "LeftShadow"
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
        ParentId: 3130308349358130474
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10328514760637927097
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4689653188824680721
        Name: "CountdownTime"
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
        ParentId: 17126862933748394046
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 959311513137877307
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11899630731777212129
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 7884410841056508999
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1286877566711643356
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1386975727305569801
        Name: "MAKRO_BG"
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
        ParentId: 7884410841056508999
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4363603041346246580
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13645784501692024059
        Name: "Text Panel"
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
        ParentId: 7884410841056508999
        ChildIds: 7839474601970175946
        ChildIds: 3369879875341916618
        ChildIds: 1571445903029923314
        ChildIds: 7735029367445548873
        ChildIds: 10027162026408968387
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15926389496565390441
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7839474601970175946
        Name: "MAKRO_TEXT"
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
        ParentId: 13645784501692024059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12656181352111431238
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3369879875341916618
        Name: "MAKRO_TEXT"
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
        ParentId: 13645784501692024059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15264714250295136899
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1571445903029923314
        Name: "MAKRO_TEXT"
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
        ParentId: 13645784501692024059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8539804505969566364
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7735029367445548873
        Name: "MAKRO_TEXT"
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
        ParentId: 13645784501692024059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12275262275844522067
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10027162026408968387
        Name: "MAKRO_TEXT"
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
        ParentId: 13645784501692024059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7265506188799567665
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16156256545224420907
        Name: "AbilityName"
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
        ParentId: 11152330515039168489
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 984609023745614168
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16751586780387222895
        Name: "Frame"
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
        ParentId: 11152330515039168489
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5539940062953962565
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13499514225220202304
        Name: "Ability Level"
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
        ParentId: 11152330515039168489
        ChildIds: 18172115295628147956
        ChildIds: 17239819882645519126
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5213194218470672254
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18172115295628147956
        Name: "UI Panel"
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
        ParentId: 13499514225220202304
        ChildIds: 14645240035329894032
        ChildIds: 7695955665449765445
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17733568116313027976
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14645240035329894032
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 18172115295628147956
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5086456535146590662
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7695955665449765445
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 18172115295628147956
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4074860892137375242
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17239819882645519126
        Name: "LevelText"
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
        ParentId: 13499514225220202304
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4476877420755171556
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9002628445532299685
        Name: "Ability Active"
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
        ParentId: 11152330515039168489
        ChildIds: 7504898969200173170
        ChildIds: 590060122378414521
        ChildIds: 11243398167064039775
        ChildIds: 8777882708235017826
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 13864365581669359644
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7504898969200173170
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 9002628445532299685
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7339536643380260018
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 590060122378414521
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 9002628445532299685
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5293766722410794134
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11243398167064039775
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 9002628445532299685
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14295889732637616202
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8777882708235017826
        Name: "Text Panel"
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
        ParentId: 9002628445532299685
        ChildIds: 18384762239621929891
        ChildIds: 7106478810574644701
        ChildIds: 1960012154546935287
        ChildIds: 15242952906966024412
        ChildIds: 6864494894321457241
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1780063161855297617
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18384762239621929891
        Name: "MAKRO_TEXT"
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
        ParentId: 8777882708235017826
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 362266824628415434
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7106478810574644701
        Name: "MAKRO_TEXT"
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
        ParentId: 8777882708235017826
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10572943642352860701
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1960012154546935287
        Name: "MAKRO_TEXT"
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
        ParentId: 8777882708235017826
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15420091969514724374
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15242952906966024412
        Name: "MAKRO_TEXT"
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
        ParentId: 8777882708235017826
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7627531234537249723
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6864494894321457241
        Name: "MAKRO_TEXT"
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
        ParentId: 8777882708235017826
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11985071705076185921
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16173163980599119137
        Name: "Duration Indicator"
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
        ParentId: 11152330515039168489
        ChildIds: 7643560369473769952
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15511803689254618091
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7643560369473769952
        Name: "Shading"
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
        ParentId: 16173163980599119137
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14501772561986021884
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15988477615564520522
        Name: "UI Image"
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
        ParentId: 11152330515039168489
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17731866983883721598
          SubobjectId: 14892923694449335148
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 14834591730102082009
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3496805744483139616
        Name: "4"
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
        ParentId: 16620942441661311265
        ChildIds: 4999849813475661235
        ChildIds: 17096289222284166650
        ChildIds: 9191127128443407671
        ChildIds: 10897978468639993612
        ChildIds: 4418784510887100629
        ChildIds: 2818269206069622813
        ChildIds: 16855570900625397538
        ChildIds: 11134350056907477298
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 3496805744483139616
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 16228515084201789625
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 9191127128443407671
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 489050930771727194
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 7838386624740278176
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 13161759871938241097
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 13045232787808224985
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 2818269206069622813
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 4999849813475661235
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 16855570900625397538
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 15252967003034245204
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 2791815443323640490
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -300
          UIY: -300
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17062554006456366128
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4999849813475661235
        Name: "Active Flash"
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
        ParentId: 3496805744483139616
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13701892680046865828
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17096289222284166650
        Name: "Cutout"
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
        ParentId: 3496805744483139616
        ChildIds: 14607767719226977443
        ChildIds: 7222815327659163381
        ChildIds: 16228515084201789625
        ChildIds: 7838386624740278176
        ChildIds: 18133601228794878151
        ChildIds: 2465634756269976330
        ChildIds: 2791815443323640490
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17694099928369004755
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14607767719226977443
        Name: "BG_SHADOW"
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
        ParentId: 17096289222284166650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6705169141084853924
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7222815327659163381
        Name: "BG"
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
        ParentId: 17096289222284166650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 200
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2985500190033953664
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16228515084201789625
        Name: "Icon"
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
        ParentId: 17096289222284166650
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 17752702521577453302
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6930775938817082551
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7838386624740278176
        Name: "Cooldown Indicator"
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
        ParentId: 17096289222284166650
        ChildIds: 17225322248951914265
        ChildIds: 14868993186946905970
        ChildIds: 489050930771727194
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16548621540145272379
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17225322248951914265
        Name: "RightClip"
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
        ParentId: 7838386624740278176
        ChildIds: 13161759871938241097
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17694221528049821731
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13161759871938241097
        Name: "RightShadow"
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
        ParentId: 17225322248951914265
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10457500955450247970
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14868993186946905970
        Name: "LeftClip"
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
        ParentId: 7838386624740278176
        ChildIds: 13045232787808224985
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7510252787226085121
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13045232787808224985
        Name: "LeftShadow"
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
        ParentId: 14868993186946905970
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7196507408579961032
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 489050930771727194
        Name: "CountdownTime"
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
        ParentId: 7838386624740278176
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16274118534799654730
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18133601228794878151
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 17096289222284166650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 18253802307514258093
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2465634756269976330
        Name: "MAKRO_BG"
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
        ParentId: 17096289222284166650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14990163123654244805
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2791815443323640490
        Name: "Text Panel"
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
        ParentId: 17096289222284166650
        ChildIds: 5643522798563028907
        ChildIds: 2231594953179801424
        ChildIds: 16382244198178687170
        ChildIds: 6058746742006330322
        ChildIds: 15043304402051868187
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3570376995107320344
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5643522798563028907
        Name: "MAKRO_TEXT"
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
        ParentId: 2791815443323640490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4839867435204325431
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2231594953179801424
        Name: "MAKRO_TEXT"
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
        ParentId: 2791815443323640490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4566166874244300018
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16382244198178687170
        Name: "MAKRO_TEXT"
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
        ParentId: 2791815443323640490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11099713761778027757
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6058746742006330322
        Name: "MAKRO_TEXT"
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
        ParentId: 2791815443323640490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5103455964160634402
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15043304402051868187
        Name: "MAKRO_TEXT"
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
        ParentId: 2791815443323640490
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9826048763299301696
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9191127128443407671
        Name: "AbilityName"
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
        ParentId: 3496805744483139616
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16222925288887258921
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10897978468639993612
        Name: "Frame"
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
        ParentId: 3496805744483139616
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.651405811
              G: 0.351532698
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11558684203482649140
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4418784510887100629
        Name: "Ability Level"
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
        ParentId: 3496805744483139616
        ChildIds: 17043949995489635662
        ChildIds: 15252967003034245204
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11876445959930210575
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17043949995489635662
        Name: "UI Panel"
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
        ParentId: 4418784510887100629
        ChildIds: 16650197504364829027
        ChildIds: 11025780674201155780
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1914920542819064825
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16650197504364829027
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 17043949995489635662
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12258755771628756919
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11025780674201155780
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 17043949995489635662
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15277811151827183739
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15252967003034245204
        Name: "LevelText"
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
        ParentId: 4418784510887100629
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15179506115190183573
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2818269206069622813
        Name: "Ability Active"
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
        ParentId: 3496805744483139616
        ChildIds: 4944696992622005789
        ChildIds: 9027535186087493461
        ChildIds: 1702375735344245218
        ChildIds: 10157220043163004428
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 3234005793336331885
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4944696992622005789
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 2818269206069622813
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9895012668307620547
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9027535186087493461
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 2818269206069622813
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11961099782313190119
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1702375735344245218
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 2818269206069622813
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3092939198069933627
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10157220043163004428
        Name: "Text Panel"
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
        ParentId: 2818269206069622813
        ChildIds: 15687144112309587
        ChildIds: 17282937529918982019
        ChildIds: 14869115436591885200
        ChildIds: 5760958600331941518
        ChildIds: 13500206531860266534
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17599344053872698912
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15687144112309587
        Name: "MAKRO_TEXT"
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
        ParentId: 10157220043163004428
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16829503111062177211
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17282937529918982019
        Name: "MAKRO_TEXT"
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
        ParentId: 10157220043163004428
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9093827653550035052
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14869115436591885200
        Name: "MAKRO_TEXT"
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
        ParentId: 10157220043163004428
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4140580308096692839
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5760958600331941518
        Name: "MAKRO_TEXT"
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
        ParentId: 10157220043163004428
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9607039019843712458
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13500206531860266534
        Name: "MAKRO_TEXT"
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
        ParentId: 10157220043163004428
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5393877624570598704
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16855570900625397538
        Name: "Duration Indicator"
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
        ParentId: 3496805744483139616
        ChildIds: 7121893389080407057
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4309275710998867354
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7121893389080407057
        Name: "Shading"
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
        ParentId: 16855570900625397538
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2722924499929204621
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11134350056907477298
        Name: "UI Image"
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
        ParentId: 3496805744483139616
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1917793724412077327
          SubobjectId: 14892923694449335148
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 9731400169800858097
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5186998242751867380
        Name: "z"
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
        ParentId: 16620942441661311265
        ChildIds: 4207003715888138740
        ChildIds: 12135308440920282167
        ChildIds: 13819196845460573693
        ChildIds: 3460574094473860700
        ChildIds: 13513857292470731595
        ChildIds: 16116866272039527964
        ChildIds: 14627870313027493130
        ChildIds: 9834520331558471047
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 5186998242751867380
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 9284265397618704416
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 13819196845460573693
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 9973931260325314451
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 12617363474777691692
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 4461616823520145473
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 106528331423426564
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 16116866272039527964
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 4207003715888138740
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 9834520331558471047
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 11703385353042165284
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 6590226969423346068
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -50
          UIY: -275
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7338360743353617699
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4207003715888138740
        Name: "Active Flash"
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
        ParentId: 5186998242751867380
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3979951216557528247
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12135308440920282167
        Name: "Cutout"
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
        ParentId: 5186998242751867380
        ChildIds: 3749215313343976709
        ChildIds: 1217352674432086368
        ChildIds: 9284265397618704416
        ChildIds: 12617363474777691692
        ChildIds: 13053785044476401148
        ChildIds: 3958489219842168744
        ChildIds: 6590226969423346068
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8976611269617351104
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3749215313343976709
        Name: "BG_SHADOW"
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
        ParentId: 12135308440920282167
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15280939547110305719
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1217352674432086368
        Name: "BG"
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
        ParentId: 12135308440920282167
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 200
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11561838493729143443
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9284265397618704416
        Name: "Icon"
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
        ParentId: 12135308440920282167
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
        Control {
          Width: -20
          Height: -20
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 126394590291373209
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16803574241507687844
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12617363474777691692
        Name: "Cooldown Indicator"
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
        ParentId: 12135308440920282167
        ChildIds: 15093127706033606739
        ChildIds: 15732784186145852845
        ChildIds: 9973931260325314451
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7833384676776537896
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15093127706033606739
        Name: "RightClip"
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
        ParentId: 12617363474777691692
        ChildIds: 4461616823520145473
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8976737267284889904
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4461616823520145473
        Name: "RightShadow"
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
        ParentId: 15093127706033606739
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1746772094044598833
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15732784186145852845
        Name: "LeftClip"
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
        ParentId: 12617363474777691692
        ChildIds: 106528331423426564
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16223234002667175442
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 106528331423426564
        Name: "LeftShadow"
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
        ParentId: 15732784186145852845
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16916196517916465627
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9973931260325314451
        Name: "CountdownTime"
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
        ParentId: 12617363474777691692
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7549175186955241049
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13053785044476401148
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 12135308440920282167
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8381144192636398526
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3958489219842168744
        Name: "MAKRO_BG"
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
        ParentId: 12135308440920282167
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6420593408761282774
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6590226969423346068
        Name: "Text Panel"
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
        ParentId: 12135308440920282167
        ChildIds: 12021558739445576922
        ChildIds: 8640228723071373834
        ChildIds: 3657275304882607911
        ChildIds: 3116166805912471724
        ChildIds: 1632207640632506731
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13299623059656100619
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12021558739445576922
        Name: "MAKRO_TEXT"
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
        ParentId: 6590226969423346068
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14571378498278639908
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8640228723071373834
        Name: "MAKRO_TEXT"
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
        ParentId: 6590226969423346068
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13133357245570008545
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3657275304882607911
        Name: "MAKRO_TEXT"
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
        ParentId: 6590226969423346068
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1375670032137663998
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3116166805912471724
        Name: "MAKRO_TEXT"
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
        ParentId: 6590226969423346068
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14974003016638191409
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1632207640632506731
        Name: "MAKRO_TEXT"
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
        ParentId: 6590226969423346068
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 90183089072074835
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13819196845460573693
        Name: "AbilityName"
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
        ParentId: 5186998242751867380
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7511492735815120442
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3460574094473860700
        Name: "Frame"
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
        ParentId: 5186998242751867380
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.37
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2987562528331852583
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13513857292470731595
        Name: "Ability Level"
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
        ParentId: 5186998242751867380
        ChildIds: 11631713147281364017
        ChildIds: 11703385353042165284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3300253341170208796
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11631713147281364017
        Name: "UI Panel"
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
        ParentId: 13513857292470731595
        ChildIds: 9229534004940013664
        ChildIds: 7135999423948577755
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10632554887044948714
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9229534004940013664
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 11631713147281364017
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2522753753594980004
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7135999423948577755
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 11631713147281364017
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6708382178865402216
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11703385353042165284
        Name: "LevelText"
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
        ParentId: 13513857292470731595
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6608247555060641670
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16116866272039527964
        Name: "Ability Active"
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
        ParentId: 5186998242751867380
        ChildIds: 8488996797712382092
        ChildIds: 1177888723510370259
        ChildIds: 17972568144160446213
        ChildIds: 1446591162875557284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 11960497807747610494
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8488996797712382092
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 16116866272039527964
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 22346302667570128
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1177888723510370259
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 16116866272039527964
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3234458238610824180
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17972568144160446213
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 16116866272039527964
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11813247009180843816
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1446591162875557284
        Name: "Text Panel"
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
        ParentId: 16116866272039527964
        ChildIds: 12446166042723374892
        ChildIds: 13617496343050832269
        ChildIds: 1903404572118196466
        ChildIds: 7057222483173973065
        ChildIds: 5273602596034091396
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9016250896103464755
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12446166042723374892
        Name: "MAKRO_TEXT"
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
        ParentId: 1446591162875557284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6958942859886935208
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13617496343050832269
        Name: "MAKRO_TEXT"
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
        ParentId: 1446591162875557284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17811316862118865279
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1903404572118196466
        Name: "MAKRO_TEXT"
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
        ParentId: 1446591162875557284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12712269331261082484
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7057222483173973065
        Name: "MAKRO_TEXT"
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
        ParentId: 1446591162875557284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 886726810755501273
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5273602596034091396
        Name: "MAKRO_TEXT"
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
        ParentId: 1446591162875557284
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14107421789580241955
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14627870313027493130
        Name: "Bubble"
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
        ParentId: 5186998242751867380
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14276866827625304519
          SubobjectId: 2465003122981752641
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9834520331558471047
        Name: "Duration Indicator"
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
        ParentId: 5186998242751867380
        ChildIds: 16871766408701808753
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12885037325359387785
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16871766408701808753
        Name: "Shading"
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
        ParentId: 9834520331558471047
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12453723075235643038
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 716241625700548529
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4803141778977921387
        Name: "x"
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
        ParentId: 16620942441661311265
        ChildIds: 12379480030678548601
        ChildIds: 2471671660123544569
        ChildIds: 17028961171724522546
        ChildIds: 2911833118155301794
        ChildIds: 5611801664410055237
        ChildIds: 15399699329728901624
        ChildIds: 7555345612943708323
        ChildIds: 17036347423998635610
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 4803141778977921387
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 12083790503183867757
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 17028961171724522546
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 3352377262062970827
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 18095286778924240897
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 14466861582985335138
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 14721005926495079822
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 15399699329728901624
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 12379480030678548601
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 7555345612943708323
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 5837870786438991900
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 14116160673730848504
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -50
          UIY: -400
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11254770450988066036
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12379480030678548601
        Name: "Active Flash"
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
        ParentId: 4803141778977921387
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14905862139045281120
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2471671660123544569
        Name: "Cutout"
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
        ParentId: 4803141778977921387
        ChildIds: 10679614558330617877
        ChildIds: 4588783849535658305
        ChildIds: 12083790503183867757
        ChildIds: 18095286778924240897
        ChildIds: 3172128996133383923
        ChildIds: 17764784294587873302
        ChildIds: 14116160673730848504
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9616511545210572823
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10679614558330617877
        Name: "BG_SHADOW"
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
        ParentId: 2471671660123544569
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3312168419915007584
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4588783849535658305
        Name: "BG"
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
        ParentId: 2471671660123544569
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 200
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6454789616978285380
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12083790503183867757
        Name: "Icon"
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
        ParentId: 2471671660123544569
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
        Control {
          Width: -20
          Height: -20
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 126394590291373209
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1213064314694358131
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18095286778924240897
        Name: "Cooldown Indicator"
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
        ParentId: 2471671660123544569
        ChildIds: 2853426890238068456
        ChildIds: 16743173513916808568
        ChildIds: 3352377262062970827
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10759706385222960895
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2853426890238068456
        Name: "RightClip"
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
        ParentId: 18095286778924240897
        ChildIds: 14466861582985335138
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9616351599986325735
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14466861582985335138
        Name: "RightShadow"
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
        ParentId: 2853426890238068456
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16274361819607374822
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16743173513916808568
        Name: "LeftClip"
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
        ParentId: 18095286778924240897
        ChildIds: 14721005926495079822
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1784379216632256453
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14721005926495079822
        Name: "LeftShadow"
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
        ParentId: 16743173513916808568
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1379655319443681292
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3352377262062970827
        Name: "CountdownTime"
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
        ParentId: 18095286778924240897
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10458463321112604558
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3172128996133383923
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 2471671660123544569
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10207457018094862953
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17764784294587873302
        Name: "MAKRO_BG"
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
        ParentId: 2471671660123544569
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11600539950807329025
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14116160673730848504
        Name: "Text Panel"
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
        ParentId: 2471671660123544569
        ChildIds: 8381583126981457598
        ChildIds: 8763826624747530221
        ChildIds: 4801378622042030507
        ChildIds: 11451237308569044714
        ChildIds: 7467609101417109115
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4716995705335587548
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8381583126981457598
        Name: "MAKRO_TEXT"
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
        ParentId: 14116160673730848504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3733499097024209139
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8763826624747530221
        Name: "MAKRO_TEXT"
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
        ParentId: 14116160673730848504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5738972390784216118
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4801378622042030507
        Name: "MAKRO_TEXT"
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
        ParentId: 14116160673730848504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16929240681522682921
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11451237308569044714
        Name: "MAKRO_TEXT"
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
        ParentId: 14116160673730848504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3902855366377979622
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7467609101417109115
        Name: "MAKRO_TEXT"
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
        ParentId: 14116160673730848504
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17917438239091988868
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17028961171724522546
        Name: "AbilityName"
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
        ParentId: 4803141778977921387
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10509656566705725421
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2911833118155301794
        Name: "Frame"
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
        ParentId: 4803141778977921387
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.37
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15029099529931293424
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5611801664410055237
        Name: "Ability Level"
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
        ParentId: 4803141778977921387
        ChildIds: 13857030442231676225
        ChildIds: 5837870786438991900
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15288375769668549067
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13857030442231676225
        Name: "UI Panel"
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
        ParentId: 5611801664410055237
        ChildIds: 18105134664346266098
        ChildIds: 16651665891974389166
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7667816492861164349
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18105134664346266098
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 13857030442231676225
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15773150722850852723
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16651665891974389166
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 13857030442231676225
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11889243685833029823
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5837870786438991900
        Name: "LevelText"
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
        ParentId: 5611801664410055237
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11696644333759153745
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15399699329728901624
        Name: "Ability Active"
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
        ParentId: 4803141778977921387
        ChildIds: 8288139753020235260
        ChildIds: 15458429493307639266
        ChildIds: 15727217567934102942
        ChildIds: 8630464298335366573
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 6637139601856470697
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8288139753020235260
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 15399699329728901624
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17989771611309101575
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15458429493307639266
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 15399699329728901624
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15349666722710598179
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15727217567934102942
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 15399699329728901624
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6491648315579176703
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8630464298335366573
        Name: "Text Panel"
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
        ParentId: 15399699329728901624
        ChildIds: 8223157087985391004
        ChildIds: 8634647148234656559
        ChildIds: 5964689849548121159
        ChildIds: 14339819139269520612
        ChildIds: 7992730312467088894
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9567838326895687396
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8223157087985391004
        Name: "MAKRO_TEXT"
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
        ParentId: 8630464298335366573
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11057677966690112895
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8634647148234656559
        Name: "MAKRO_TEXT"
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
        ParentId: 8630464298335366573
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1065488881911218344
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5964689849548121159
        Name: "MAKRO_TEXT"
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
        ParentId: 8630464298335366573
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5299874425533866659
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14339819139269520612
        Name: "MAKRO_TEXT"
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
        ParentId: 8630464298335366573
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17701868348365792526
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7992730312467088894
        Name: "MAKRO_TEXT"
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
        ParentId: 8630464298335366573
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4188421805704103412
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7555345612943708323
        Name: "Duration Indicator"
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
        ParentId: 4803141778977921387
        ChildIds: 5538213581131819864
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5419865558709796190
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5538213581131819864
        Name: "Shading"
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
        ParentId: 7555345612943708323
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6139357404098598729
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 8288857664811523486
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17036347423998635610
        Name: "Bubble"
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
        ParentId: 4803141778977921387
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11112622659650254559
          SubobjectId: 9089137704155523161
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16843880431039982457
        Name: "c"
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
        ParentId: 16620942441661311265
        ChildIds: 11312523723108551762
        ChildIds: 8092757766966596115
        ChildIds: 8068937386491566994
        ChildIds: 2142386057432933871
        ChildIds: 229755763234302654
        ChildIds: 14930473006158733958
        ChildIds: 5333593244971036085
        ChildIds: 898772356611511436
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 16843880431039982457
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 5091686756924926434
            }
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 8068937386491566994
            }
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 5373940405189887019
            }
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 10230427412355215263
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 668481848288027437
            }
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 14549539484813606642
            }
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 14930473006158733958
            }
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 11312523723108551762
            }
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator"
            ObjectReference {
              SubObjectId: 5333593244971036085
            }
          }
          Overrides {
            Name: "cs:DurationIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DurationIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText"
            ObjectReference {
              SubObjectId: 5150332910030279376
            }
          }
          Overrides {
            Name: "cs:LevelText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LevelText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 4254400613725704033
            }
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
            Bool: false
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
        Control {
          Width: 100
          Height: 100
          UIX: -175
          UIY: -400
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1284060328367139451
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11312523723108551762
        Name: "Active Flash"
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
        ParentId: 16843880431039982457
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 4845132871066104815
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8092757766966596115
        Name: "Cutout"
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
        ParentId: 16843880431039982457
        ChildIds: 7512465178229690691
        ChildIds: 16067611905594327940
        ChildIds: 5091686756924926434
        ChildIds: 10230427412355215263
        ChildIds: 2366578746548083522
        ChildIds: 1059065087230796099
        ChildIds: 4254400613725704033
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 618587733932269208
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7512465178229690691
        Name: "BG_SHADOW"
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
        ParentId: 8092757766966596115
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11535464300265556207
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16067611905594327940
        Name: "BG"
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
        ParentId: 8092757766966596115
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 20
          Height: 20
          UIX: -2.5
          UIY: -1.5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 0.0199999809
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15309169986746228171
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5091686756924926434
        Name: "Icon"
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
        ParentId: 8092757766966596115
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
        Control {
          Width: -20
          Height: -20
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 126394590291373209
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11327880834104761084
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10230427412355215263
        Name: "Cooldown Indicator"
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
        ParentId: 8092757766966596115
        ChildIds: 8309004936395917290
        ChildIds: 8251475064381806731
        ChildIds: 5373940405189887019
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1779832230378326128
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8309004936395917290
        Name: "RightClip"
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
        ParentId: 10230427412355215263
        ChildIds: 668481848288027437
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
        Control {
          Width: 50
          Height: 100
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 618463042882762344
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 668481848288027437
        Name: "RightShadow"
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
        ParentId: 8309004936395917290
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7798890751582721385
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8251475064381806731
        Name: "LeftClip"
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
        ParentId: 10230427412355215263
        ChildIds: 14549539484813606642
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
        Control {
          Width: 50
          Height: 100
          UIX: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10746291820645243210
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14549539484813606642
        Name: "LeftShadow"
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
        ParentId: 8251475064381806731
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11440437440467271299
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5373940405189887019
        Name: "CountdownTime"
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
        ParentId: 10230427412355215263
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "999"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2072483702169149697
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2366578746548083522
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 8092757766966596115
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 113
          Height: 27
          UIY: 4.40061617
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 20600567673294054
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1059065087230796099
        Name: "MAKRO_BG"
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
        ParentId: 8092757766966596115
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 108
          UIY: 12.894
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3250606722704959374
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4254400613725704033
        Name: "Text Panel"
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
        ParentId: 8092757766966596115
        ChildIds: 11069145915546372607
        ChildIds: 18005479079402131742
        ChildIds: 12038785650180057529
        ChildIds: 12738432440370662134
        ChildIds: 10435946227958855610
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 29.7472591
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14742320705602874451
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11069145915546372607
        Name: "MAKRO_TEXT"
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
        ParentId: 4254400613725704033
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13704754576573656700
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18005479079402131742
        Name: "MAKRO_TEXT"
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
        ParentId: 4254400613725704033
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13998859944590172857
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12038785650180057529
        Name: "MAKRO_TEXT"
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
        ParentId: 4254400613725704033
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7426896191172514470
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12738432440370662134
        Name: "MAKRO_TEXT"
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
        ParentId: 4254400613725704033
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13531247942750826601
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10435946227958855610
        Name: "MAKRO_TEXT"
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
        ParentId: 4254400613725704033
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "SHIFT"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8450612369186248459
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8068937386491566994
        Name: "AbilityName"
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
        ParentId: 16843880431039982457
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2033605029554999650
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2142386057432933871
        Name: "Frame"
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
        ParentId: 16843880431039982457
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          Height: 4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.37
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6733737335114026111
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 229755763234302654
        Name: "Ability Level"
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
        ParentId: 16843880431039982457
        ChildIds: 15952781063292671082
        ChildIds: 5150332910030279376
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6470024265310811972
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15952781063292671082
        Name: "UI Panel"
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
        ParentId: 229755763234302654
        ChildIds: 13319495124991714993
        ChildIds: 11410397789052570156
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16683745835939612082
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13319495124991714993
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 15952781063292671082
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6270243284198801916
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11410397789052570156
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 15952781063292671082
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2962814586034091568
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5150332910030279376
        Name: "LevelText"
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
        ParentId: 229755763234302654
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3437310860790761694
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14930473006158733958
        Name: "Ability Active"
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
        ParentId: 16843880431039982457
        ChildIds: 4907682932685001190
        ChildIds: 4438761371107024524
        ChildIds: 8204317422512661384
        ChildIds: 8711512832207672871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 15130624999362088998
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4907682932685001190
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 14930473006158733958
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8379402302585707656
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4438761371107024524
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 14930473006158733958
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6405777309483596972
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8204317422512661384
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 14930473006158733958
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15562166209839782000
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8711512832207672871
        Name: "Text Panel"
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
        ParentId: 14930473006158733958
        ChildIds: 942155238794582875
        ChildIds: 1565564031088931165
        ChildIds: 4905693976966953712
        ChildIds: 10432231351169785017
        ChildIds: 7842062611771249318
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 659450021643974763
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 942155238794582875
        Name: "MAKRO_TEXT"
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
        ParentId: 8711512832207672871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 1483337456302431216
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1565564031088931165
        Name: "MAKRO_TEXT"
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
        ParentId: 8711512832207672871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9450940667904134695
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4905693976966953712
        Name: "MAKRO_TEXT"
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
        ParentId: 8711512832207672871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14154237197805808684
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10432231351169785017
        Name: "MAKRO_TEXT"
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
        ParentId: 8711512832207672871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8667379181330934657
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7842062611771249318
        Name: "MAKRO_TEXT"
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
        ParentId: 8711512832207672871
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13240969348777249659
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5333593244971036085
        Name: "Duration Indicator"
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
        ParentId: 16843880431039982457
        ChildIds: 7535203380608358937
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 79
          Height: 15
          UIY: 18.671
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              G: 0.194617867
              B: 0.863157392
              A: 1
            }
            BackgroundColor {
              R: 0.02
              G: 0.00556291314
              A: 1
            }
            Percent: 0.552933455
            FillBrush {
            }
            BackgroundBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14327682190384509905
          SubobjectId: 17293412896128553977
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7535203380608358937
        Name: "Shading"
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
        ParentId: 5333593244971036085
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 7
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.4
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15623687500512123334
          SubobjectId: 17436479173850151406
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 10001860005436604822
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 898772356611511436
        Name: "Bubble"
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
        ParentId: 16843880431039982457
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14979116756890714423
          SubobjectId: 3167278108771803057
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3514345731043530125
        Name: "Attack"
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
        ParentId: 16620942441661311265
        ChildIds: 9930997801477349191
        ChildIds: 10392769600541608782
        ChildIds: 3252598604324826983
        ChildIds: 6424663173260963235
        ChildIds: 5801106006125466442
        ChildIds: 4685388187924060004
        ChildIds: 14936170169953207059
        ChildIds: 3434967725548945552
        UnregisteredParameters {
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
        Control {
          Width: 150
          Height: 150
          UIX: -75
          UIY: -75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17627594683257848491
          SubobjectId: 4105394437550983763
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          WasRoot: true
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9930997801477349191
        Name: "AbilityDisplayClientAttack"
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
        ParentId: 3514345731043530125
        UnregisteredParameters {
          Overrides {
            Name: "cs:Panel"
            ObjectReference {
              SubObjectId: 3514345731043530125
            }
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 9032956993379182800
            }
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 6424663173260963235
            }
          }
          Overrides {
            Name: "cs:CountdownText"
            ObjectReference {
              SubObjectId: 293834456598062975
            }
          }
          Overrides {
            Name: "cs:ProgressIndicator"
            ObjectReference {
              SubObjectId: 13139986230590820847
            }
          }
          Overrides {
            Name: "cs:RightShadow"
            ObjectReference {
              SubObjectId: 14376010439565713221
            }
          }
          Overrides {
            Name: "cs:LeftShadow"
            ObjectReference {
              SubObjectId: 9075742451838552609
            }
          }
          Overrides {
            Name: "cs:ActiveFrame"
            ObjectReference {
              SubObjectId: 9002628445532299685
            }
          }
          Overrides {
            Name: "cs:ActiveFlash"
            ObjectReference {
              SubObjectId: 14936170169953207059
            }
          }
          Overrides {
            Name: "cs:ActionName"
            ObjectReference {
              SubObjectId: 17900130246455224650
            }
          }
          Overrides {
            Name: "cs:Panel:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Panel:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Icon:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:NameText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CountdownText:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ProgressIndicator:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:RightShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:LeftShadow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFrame:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActiveFlash:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:ActionName:ml"
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
        Script {
          ScriptAsset {
            Id: 16759298589791082027
          }
        }
        InstanceHistory {
          SelfId: 11278855435999689466
          SubobjectId: 8688119579028415612
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10392769600541608782
        Name: "Active Flash"
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
        ParentId: 3514345731043530125
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 74
          UIY: -28.4874878
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              R: 1
              G: 0.76543051
              B: 0.230000019
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11983360921128803135
          SubobjectId: 7644282853577937863
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3252598604324826983
        Name: "Cutout"
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
        ParentId: 3514345731043530125
        ChildIds: 8070100472707631196
        ChildIds: 13854594954274028939
        ChildIds: 9032956993379182800
        ChildIds: 13139986230590820847
        ChildIds: 17436828657181574004
        ChildIds: 8125944715411105825
        ChildIds: 17900130246455224650
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
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
              Id: 10067297865473811114
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17142256732365059656
          SubobjectId: 2431106150639058608
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8070100472707631196
        Name: "BG_SHADOW"
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
        ParentId: 3252598604324826983
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 4
          UIX: 0.75
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              A: 0.426000029
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5000717702690496575
          SubobjectId: 9889517496047675591
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13854594954274028939
        Name: "BG"
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
        ParentId: 3252598604324826983
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 343
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              R: 0.026
              G: 0.026
              B: 0.026
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3532287848131343643
          SubobjectId: 18256946995895565795
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9032956993379182800
        Name: "Icon"
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
        ParentId: 3252598604324826983
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 17239930915626961643
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8666221394240844332
          SubobjectId: 12978278961794317012
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13139986230590820847
        Name: "Cooldown Indicator"
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
        ParentId: 3252598604324826983
        ChildIds: 3620996149814330181
        ChildIds: 11904681150004988827
        ChildIds: 293834456598062975
        UnregisteredParameters {
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
        Control {
          Width: 150
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 18285483184410157216
          SubobjectId: 3574617400489027672
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3620996149814330181
        Name: "RightClip"
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
        ParentId: 13139986230590820847
        ChildIds: 14376010439565713221
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
        Control {
          Width: 75
          Height: 150
          UIX: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17142130873158819512
          SubobjectId: 2431262864981497408
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14376010439565713221
        Name: "RightShadow"
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
        ParentId: 3620996149814330181
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9893023245394935225
          SubobjectId: 4977486650499347777
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11904681150004988827
        Name: "LeftClip"
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
        ParentId: 13139986230590820847
        ChildIds: 9075742451838552609
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
        Control {
          Width: 75
          Height: 150
          UIX: 3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
              Id: 12746116963631936972
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8093622267028074906
          SubobjectId: 13549874514322995554
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9075742451838552609
        Name: "LeftShadow"
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
        ParentId: 11904681150004988827
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
        Control {
          Width: 75
          Height: 150
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleright"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 8913948386717718099
          SubobjectId: 13253026425810230955
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 293834456598062975
        Name: "CountdownTime"
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
        ParentId: 13139986230590820847
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
        Control {
          Width: 60
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "5"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 30
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17992686568339179985
          SubobjectId: 3885019469516226857
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17436828657181574004
        Name: "MAKRO_BG_SHADOW"
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
        ParentId: 3252598604324826983
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 132
          Height: 27
          UIY: 10.7667046
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 2604353830693238371
            }
            Color {
              A: 0.623529434
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 16517266042101048374
          SubobjectId: 2981836461218688206
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8125944715411105825
        Name: "MAKRO_BG"
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
        ParentId: 3252598604324826983
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 74
          Height: 148
          UIY: 19.2600708
          RotationAngle: 90
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 48307754774318265
            }
            Color {
              R: 0.110000014
              G: 0.0262251683
              A: 0.452000022
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14442011009793904478
          SubobjectId: 303102346340763558
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17900130246455224650
        Name: "Text Panel"
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
        ParentId: 3252598604324826983
        ChildIds: 17750675034775294724
        ChildIds: 4751844749052244861
        ChildIds: 11909277272962620617
        ChildIds: 16140162553337070933
        ChildIds: 9769092756456898863
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: 36.1133499
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3019403491023045763
          SubobjectId: 16555112379976879227
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17750675034775294724
        Name: "MAKRO_TEXT"
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
        ParentId: 17900130246455224650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "Attack"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6575603201155548844
          SubobjectId: 10887942209865059924
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4751844749052244861
        Name: "MAKRO_TEXT"
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
        ParentId: 17900130246455224650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "Attack"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2825407452565293673
          SubobjectId: 16964317208116462225
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11909277272962620617
        Name: "MAKRO_TEXT"
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
        ParentId: 17900130246455224650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "Attack"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 9394947889028053622
          SubobjectId: 5636552701285495438
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16140162553337070933
        Name: "MAKRO_TEXT"
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
        ParentId: 17900130246455224650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "Attack"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 6825358786287196345
          SubobjectId: 10583470265802166337
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9769092756456898863
        Name: "MAKRO_TEXT"
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
        ParentId: 17900130246455224650
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "Attack"
            Color {
              R: 1
              G: 0.737417221
              B: 0.350000024
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10391694150608551899
          SubobjectId: 6660321650312460067
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6424663173260963235
        Name: "AbilityName"
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
        ParentId: 3514345731043530125
        UnregisteredParameters {
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
        Control {
          Width: 100
          Height: 35
          UIY: 65.7174072
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Ability Name"
            Color {
              R: 1
              G: 0.652450323
              B: 0.36
              A: 1
            }
            Size: 12
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17962885390776564146
          SubobjectId: 3823693050672787786
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5801106006125466442
        Name: "Frame"
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
        ParentId: 3514345731043530125
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 6
          Height: 6
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 1170023131880546749
            }
            Color {
              R: 0.013708625
              B: 0.0900000334
              A: 1
            }
            TeamSettings {
            }
            RetainAspectRatio: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13259485182175044783
          SubobjectId: 8384477650364148823
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4685388187924060004
        Name: "Ability Level"
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
        ParentId: 3514345731043530125
        ChildIds: 17987414006544532219
        ChildIds: 9307180136245925505
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -8
          Height: 21
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13599192069458010004
          SubobjectId: 8134214131070523244
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17987414006544532219
        Name: "UI Panel"
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
        ParentId: 4685388187924060004
        ChildIds: 6409355916543177805
        ChildIds: 1392366269969340519
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          UIX: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 214131646558760290
          SubobjectId: 14888968659903751578
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6409355916543177805
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 17987414006544532219
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 5992778860505362279
            }
            Color {
              R: 0.03125
              G: 0.0105546322
              A: 0.770000041
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 12858987374623484204
          SubobjectId: 9091867587311772116
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1392366269969340519
        Name: "BUTTON_GOLD_BG"
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
        ParentId: 17987414006544532219
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 78
          Height: 150
          UIY: 63.0491219
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          Image {
            Brush {
              Id: 16272829598190271809
            }
            Color {
              R: 0.0800000429
              G: 0.0270198733
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14730752952867282656
          SubobjectId: 15380273332065816
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9307180136245925505
        Name: "LevelText"
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
        ParentId: 4685388187924060004
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 85
          Height: 12
          UIX: 21
          UIY: -3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "10"
            Color {
              R: 1
              G: 0.837086201
              B: 0.7
              A: 1
            }
            Size: 11
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 11336346532215892341
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 14610774421021794318
          SubobjectId: 476084591232248054
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14936170169953207059
        Name: "Ability Active"
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
        ParentId: 3514345731043530125
        ChildIds: 3841374391829764717
        ChildIds: 18202683817742729935
        ChildIds: 14281525744205303250
        ChildIds: 1626697213651560178
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        InstanceHistory {
          SelfId: 3786096469514647798
          SubobjectId: 17929510888674865166
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3841374391829764717
        Name: "OVERLAY_ON_SKILL_USE_2"
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
        ParentId: 14936170169953207059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -5
          Height: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 0.651405811
              G: 0.351532787
              A: 0.561000049
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 10464588822437868632
          SubobjectId: 6728713823229836448
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18202683817742729935
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 14936170169953207059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 2014258926635376275
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 13661046521135518844
          SubobjectId: 8200290674783755396
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14281525744205303250
        Name: "OVERLAY_ON_SKILL_USE_3"
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
        ParentId: 14936170169953207059
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -10
          Height: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 14060330023043759337
            }
            Color {
              R: 1
              G: 0.874768257
              B: 0.69
              A: 0.284
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 3641096938755911840
          SubobjectId: 18365476809996220504
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1626697213651560178
        Name: "Text Panel"
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
        ParentId: 14936170169953207059
        ChildIds: 2823273196867239522
        ChildIds: 5286416647302145034
        ChildIds: 12239742503829203657
        ChildIds: 850487859913190809
        ChildIds: 9060970140799049419
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          UIY: -2.00698328
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17030075724577296571
          SubobjectId: 2309917941449070659
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2823273196867239522
        Name: "MAKRO_TEXT"
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
        ParentId: 1626697213651560178
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 17430604453356548896
          SubobjectId: 4448839427109288920
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5286416647302145034
        Name: "MAKRO_TEXT"
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
        ParentId: 1626697213651560178
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: -1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 7374734130038220535
          SubobjectId: 12250019801649507855
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12239742503829203657
        Name: "MAKRO_TEXT"
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
        ParentId: 1626697213651560178
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 2386307836973761788
          SubobjectId: 17097176910942440452
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 850487859913190809
        Name: "MAKRO_TEXT"
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
        ParentId: 1626697213651560178
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 1
          UIY: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.270833343
              G: 0.0912729055
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 11328974844680209233
          SubobjectId: 5863716523850419113
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9060970140799049419
        Name: "MAKRO_TEXT"
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
        ParentId: 1626697213651560178
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LMB"
            Color {
              R: 0.848958313
              G: 0.458142489
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 11336346532215892341
            }
            VerticalJustification {
              Value: "mc:everticaljustification:bottom"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 5958669746968503211
          SubobjectId: 11450950803194243923
          InstanceId: 7900543579759898107
          TemplateId: 4005089717090586234
          NestedInstanceIds: 1771346759537945726
          OuterTemplateIds: 13074073657660917058
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3434967725548945552
        Name: "Bubble"
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
        ParentId: 3514345731043530125
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
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6951220689761147886
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        InstanceHistory {
          SelfId: 15897178513269873776
          SubobjectId: 4074335285226767094
          InstanceId: 7900543579759898107
          TemplateId: 13074073657660917058
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1589501496425008203
        Name: "AbilityDisabler"
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
        ParentId: 4594542242463950141
        ChildIds: 6435163923228126235
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
          FilePartitionName: "AbilityDisabler"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6435163923228126235
        Name: "Ability_Disabler"
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
        ParentId: 1589501496425008203
        ChildIds: 18331161340056323807
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
            Id: 10260968238408560554
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18331161340056323807
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
        ParentId: 6435163923228126235
        ChildIds: 786534215224163387
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
        Id: 786534215224163387
        Name: "Ability_Disabler_Client"
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
        ParentId: 18331161340056323807
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
            Id: 18096466832354324981
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18423683221421421492
        Name: "ObjectPlacement"
        Transform {
          Location {
            Z: 700
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        ChildIds: 17703863616931062797
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
          FilePartitionName: "NewFolder"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17703863616931062797
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
        ParentId: 18423683221421421492
        ChildIds: 10993904759292076090
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
        Id: 10993904759292076090
        Name: "PlaceObject"
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
        ParentId: 17703863616931062797
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
            Id: 15665613391279439531
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12264270491021767581
        Name: "Status Effect System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 4353908238033297960
            value {
              Overrides {
                Name: "Name"
                String: "Status Effect System"
              }
            }
          }
          TemplateAsset {
            Id: 4539412308632193351
          }
        }
      }
      Objects {
        Id: 11495206360820807684
        Name: "Character Hierarchy"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 10798133378291755207
            value {
              Overrides {
                Name: "Name"
                String: "Character Hierarchy"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 17078281080146673991
          }
        }
      }
      Objects {
        Id: 5199740351189178042
        Name: "EquipmentCleanupOnLeave"
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
        ParentId: 4594542242463950141
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
            Id: 4319333374079986798
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3357013762079959011
        Name: "ThrowableSupportAbilities"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 7065226975354398550
            value {
              Overrides {
                Name: "Name"
                String: "ThrowableSupportAbilities"
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -2268.74902
                  Y: -3020.33
                  Z: -51261.1289
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -124.999992
                }
              }
            }
          }
          TemplateAsset {
            Id: 11996264710300556235
          }
        }
      }
      Objects {
        Id: 9524654899406253919
        Name: "Missuse Folder"
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
        ParentId: 4594542242463950141
        ChildIds: 8752233380781111591
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
          FilePartitionName: "Missuse Folder"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8752233380781111591
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
        ParentId: 9524654899406253919
        ChildIds: 8011841724315773463
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8011841724315773463
        Name: "WrongXpUse"
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
        ParentId: 8752233380781111591
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
            Id: 4249209080273188565
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13836523838949576650
        Name: "AutoWeaponSwap"
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
        ParentId: 4594542242463950141
        ChildIds: 4067421090961197268
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4067421090961197268
        Name: "SafeZone_WeaponSwap"
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
        ParentId: 13836523838949576650
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
            Id: 11576949396442714438
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9360743438752598428
        Name: "AbilityProgression"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 3731413319797607307
            value {
              Overrides {
                Name: "Name"
                String: "AbilityProgression"
              }
            }
          }
          TemplateAsset {
            Id: 14104061968928386320
          }
        }
      }
      Objects {
        Id: 16914859641837291799
        Name: "Targeting System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 6543542712491765073
            value {
              Overrides {
                Name: "Name"
                String: "Targeting System"
              }
            }
          }
          TemplateAsset {
            Id: 15018293112981776438
          }
        }
      }
      Objects {
        Id: 6687489877449245621
        Name: "HarvestingSystem"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 1814903886876349253
            value {
              Overrides {
                Name: "Name"
                String: "HarvestingSystem"
              }
            }
          }
          TemplateAsset {
            Id: 4523092629825599592
          }
        }
      }
      Objects {
        Id: 12498343613210813967
        Name: "TempStatRecover"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 15976610100924950826
            value {
              Overrides {
                Name: "Name"
                String: "TempStatRecover"
              }
            }
          }
          TemplateAsset {
            Id: 1625765452394729564
          }
        }
      }
      Objects {
        Id: 6234568694236918399
        Name: "EquipmentEquipper"
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
        ParentId: 4594542242463950141
        ChildIds: 18329219760766859590
        ChildIds: 14333484317641314477
        ChildIds: 12210294814395179630
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 18329219760766859590
        Name: "PointsSpentHook"
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
        ParentId: 6234568694236918399
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
            Id: 5292521385556981970
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14333484317641314477
        Name: "InventoryEquipment"
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
        ParentId: 6234568694236918399
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
            Id: 17285934925408891118
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12210294814395179630
        Name: "ClassEquipper"
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
        ParentId: 6234568694236918399
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
            Id: 116029304157028287
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16012557571510256135
        Name: "Character AutoSave"
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
        ParentId: 4594542242463950141
        ChildIds: 7058997560424761310
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7058997560424761310
        Name: "Character_AutoSave"
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
        ParentId: 16012557571510256135
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
            Id: 4869393409251262569
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9231196837641742209
        Name: "PotionSelect"
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
        ParentId: 4594542242463950141
        ChildIds: 11050909966513790736
        ChildIds: 16078467379125668320
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
        Id: 11050909966513790736
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
        ParentId: 9231196837641742209
        ChildIds: 3200119481270037851
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3200119481270037851
        Name: "Potion_Select_Serve"
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
        ParentId: 11050909966513790736
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
            Id: 3456618091225098536
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16078467379125668320
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
        ParentId: 9231196837641742209
        ChildIds: 17586251960063154832
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
        Id: 17586251960063154832
        Name: "Potion_Select_Client"
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
        ParentId: 16078467379125668320
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
            Id: 9580703737437746580
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17699998976495263131
        Name: "Potion Auto Equip"
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
        ParentId: 4594542242463950141
        ChildIds: 10115176741975785138
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10115176741975785138
        Name: "PotionAutoEquip"
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
        ParentId: 17699998976495263131
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
            Id: 14326098358875983326
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5825506913699031339
        Name: "PlayerDamagerOverride"
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
        ParentId: 4594542242463950141
        ChildIds: 14676988788046630784
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14676988788046630784
        Name: "PlayerDamageOverride"
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
        ParentId: 5825506913699031339
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
            Id: 4188743870964439278
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6971558339717546766
        Name: "Generic Sounds Library"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4594542242463950141
        TemplateInstance {
          ParameterOverrideMap {
            key: 17810628279987388495
            value {
              Overrides {
                Name: "Name"
                String: "Generic Sounds Library"
              }
            }
          }
          TemplateAsset {
            Id: 13225073513533744256
          }
        }
      }
    }
    Assets {
      Id: 2604353830693238371
      Name: "BG Highlighted 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundHighlighted_020"
      }
    }
    Assets {
      Id: 10067297865473811114
      Name: "Center Circle 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "CenterCircle_001"
      }
    }
    Assets {
      Id: 14060330023043759337
      Name: "BG Flat 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundNoOutline_020"
      }
    }
    Assets {
      Id: 17752702521577453302
      Name: "Fantasy Ability Yellow 027"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Ability_Yellow_027"
      }
    }
    Assets {
      Id: 12746116963631936972
      Name: "UI Basic Shape Square"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Shape_Square"
      }
    }
    Assets {
      Id: 48307754774318265
      Name: "UI Gradient Rectangular 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Shape_002"
      }
    }
    Assets {
      Id: 11336346532215892341
      Name: "Germania One"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "GermaniaOneRegular_ref"
      }
    }
    Assets {
      Id: 1170023131880546749
      Name: "Frame Outline Thin 006"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameOutline_015"
      }
    }
    Assets {
      Id: 5992778860505362279
      Name: "BG Flat 016"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundNoOutline_33"
      }
    }
    Assets {
      Id: 16272829598190271809
      Name: "Frame Outlined 016"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameSolid4px_033"
      }
    }
    Assets {
      Id: 2014258926635376275
      Name: "Frame Outlined Thick 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameFlat_020"
      }
    }
    Assets {
      Id: 126394590291373209
      Name: "Fantasy Spell Potion 004"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Potion_004"
      }
    }
    Assets {
      Id: 17239930915626961643
      Name: "Military Ability Punch"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Military_Ability_Yellow_011"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Hierarchy"
}
