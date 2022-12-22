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
        ChildIds: 7900543579759898107
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
        Id: 7900543579759898107
        Name: "Character Equipper"
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
            key: 429556912327290803
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 832132595045142815
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 2517499960837777713
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 3208058945432394462
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 3514113495069349294
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 3601078566348514571
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 5238946506325828254
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 7648816106236030853
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 9901966034142450999
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 11419067894264293871
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12245008530248017421
            value {
              Overrides {
                Name: "Name"
                String: "Character Equipper"
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
          ParameterOverrideMap {
            key: 14486647355721498229
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14853599438625988647
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 15453198091776295408
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 16869371196581793884
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 17571985287491015481
            value {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 4083777002421548999
                }
              }
            }
          }
          TemplateAsset {
            Id: 13074073657660917058
          }
        }
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Hierarchy"
}
