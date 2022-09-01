Assets {
  Id: 9342539279339074778
  Name: "Daily RP Crate Manager"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17454769105150185143
      Objects {
        Id: 17454769105150185143
        Name: "Daily RP Crate Manager"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2844206692085061044
        ChildIds: 5704343108258130678
        ChildIds: 11303560799847976803
        ChildIds: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:DaySeconds"
            Int: 72000
          }
          Overrides {
            Name: "cs:SocialBonusSeconds"
            Int: 72000
          }
          Overrides {
            Name: "cs:SocialBonusMaxPerDay"
            Int: 3
          }
          Overrides {
            Name: "cs:DebugDay"
            Bool: false
          }
          Overrides {
            Name: "cs:StartDay"
            Int: 1
          }
          Overrides {
            Name: "cs:DaySeconds:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:DaySeconds:ml"
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5704343108258130678
        Name: "DailyRPCrateManagerServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17454769105150185143
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 17454769105150185143
            }
          }
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 2175292150174295362
            }
          }
          Overrides {
            Name: "cs:RewardsList"
            ObjectReference {
              SubObjectId: 3616023821180796498
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
            Id: 14359341971430072585
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11303560799847976803
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
        ParentId: 17454769105150185143
        ChildIds: 15246945111282039370
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
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15246945111282039370
        Name: "DailyRPCrateManagerClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11303560799847976803
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 17454769105150185143
            }
          }
          Overrides {
            Name: "cs:RewardsList"
            ObjectReference {
              SubObjectId: 3616023821180796498
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
            Id: 2500807371313333854
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3616023821180796498
        Name: "Rewards List"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17454769105150185143
        ChildIds: 15404891344590579275
        ChildIds: 5905213257905291514
        ChildIds: 6861379735362643709
        ChildIds: 524192188507214488
        ChildIds: 14418888415289740693
        ChildIds: 6917603675657038685
        ChildIds: 12528475090745698524
        ChildIds: 6254029304234592672
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
        Id: 15404891344590579275
        Name: "Reward 1"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 1000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 0
          }
          Overrides {
            Name: "cs:Weight"
            Int: 25
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Common"
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
        Id: 5905213257905291514
        Name: "Reward 2"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 2000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 0
          }
          Overrides {
            Name: "cs:Weight"
            Int: 21
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Common"
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
        Id: 6861379735362643709
        Name: "Reward 3"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 5000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 0
          }
          Overrides {
            Name: "cs:Weight"
            Int: 20
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Common"
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
        Id: 524192188507214488
        Name: "Reward 4"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 10000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 0
          }
          Overrides {
            Name: "cs:Weight"
            Int: 15
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Common"
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
        Id: 14418888415289740693
        Name: "Reward 5 - Jackpot"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 25000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 250
          }
          Overrides {
            Name: "cs:Weight"
            Int: 10
          }
          Overrides {
            Name: "cs:Color"
            Color {
              G: 0.333774626
              B: 0.72
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Rare"
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
        Id: 6917603675657038685
        Name: "Reward 6 - Jackpot"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 50000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 500
          }
          Overrides {
            Name: "cs:Weight"
            Int: 6
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.364503473
              B: 0.64
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Epic"
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
        Id: 12528475090745698524
        Name: "Reward 7 - Jackpot"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 100000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 1000
          }
          Overrides {
            Name: "cs:Weight"
            Int: 3
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.960000038
              G: 0.495894104
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Legendary"
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
        Id: 6254029304234592672
        Name: "Reward New User - Jackpot"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3616023821180796498
        UnregisteredParameters {
          Overrides {
            Name: "cs:Amount"
            Int: 50000
          }
          Overrides {
            Name: "cs:SocialBonus"
            Int: 0
          }
          Overrides {
            Name: "cs:Weight"
            Int: 0
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.960000038
              G: 0.495894104
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type"
            String: "Legendary"
          }
          Overrides {
            Name: "cs:IsNewUser"
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
        Folder {
          IsGroup: true
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
