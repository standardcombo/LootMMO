Assets {
  Id: 15502473679182210815
  Name: "Global Object Manager"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3359230655183899653
      Objects {
        Id: 3359230655183899653
        Name: "Global Object Manager"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10751356546004397402
        ChildIds: 17129025076141501991
        ChildIds: 3633991500593068633
        ChildIds: 15611766535177858645
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
        Id: 17129025076141501991
        Name: "Global Network Properties"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3359230655183899653
        UnregisteredParameters {
          Overrides {
            Name: "cs:ServerStartOSTime"
            Int: 0
          }
          Overrides {
            Name: "cs:PartyColors"
            String: ""
          }
          Overrides {
            Name: "cs:MaguffinPosition"
            Int: -1
          }
          Overrides {
            Name: "cs:PodiumHostId"
            String: ""
          }
          Overrides {
            Name: "cs:PodiumPlayerId"
            String: ""
          }
          Overrides {
            Name: "cs:PodiumState"
            String: ""
          }
          Overrides {
            Name: "cs:TTTGameState"
            String: "play,0,0,0,0,0,0,0,0,0"
          }
          Overrides {
            Name: "cs:SongID"
            Int: 1
          }
          Overrides {
            Name: "cs:IsPlaying"
            Bool: false
          }
          Overrides {
            Name: "cs:StartTime"
            Float: 0
          }
          Overrides {
            Name: "cs:BallDropEventID"
            String: ""
          }
          Overrides {
            Name: "cs:BallDropStartTime"
            Int: 0
          }
          Overrides {
            Name: "cs:ServerStartOSTime:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:PartyColors:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:MaguffinPosition:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:PodiumHostId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:PodiumPlayerId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:PodiumPlayerId:tooltip"
            String: "Open podium answering player id."
          }
          Overrides {
            Name: "cs:PodiumHostId:tooltip"
            String: "Open podium host player id."
          }
          Overrides {
            Name: "cs:TTTGameState:tooltip"
            String: "Tic Tac Toe Game State."
          }
          Overrides {
            Name: "cs:TTTGameState:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:PodiumState:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:SongID:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:SongID:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:IsPlaying:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:IsPlaying:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:StartTime:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:StartTime:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:BallDropEventID:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:BallDropStartTime:isrep"
            Bool: true
          }
        }
        WantsNetworking: true
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
        Id: 3633991500593068633
        Name: "GlobalNetworkedObjectServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3359230655183899653
        UnregisteredParameters {
          Overrides {
            Name: "cs:GlobalObject"
            ObjectReference {
              SubObjectId: 17129025076141501991
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
            Id: 2450661802782246941
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15611766535177858645
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
        ParentId: 3359230655183899653
        ChildIds: 8858745249200366276
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
        Id: 8858745249200366276
        Name: "GlobalNetworkedObjectClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15611766535177858645
        UnregisteredParameters {
          Overrides {
            Name: "cs:GlobalObject"
            ObjectReference {
              SubObjectId: 17129025076141501991
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
            Id: 10525638200106929458
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
