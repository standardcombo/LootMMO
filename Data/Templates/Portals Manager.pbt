Assets {
  Id: 567200784333114807
  Name: "Portals Manager"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4052568452505358126
      Objects {
        Id: 4052568452505358126
        Name: "Portals Manager"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2966550378626686235
        ChildIds: 11209863782976279764
        ChildIds: 11762050501954941276
        ChildIds: 2359029314344247370
        ChildIds: 2864209598934083948
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
        Id: 11209863782976279764
        Name: "PortalsManagerServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4052568452505358126
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
            Id: 18138807480089819107
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11762050501954941276
        Name: "Collections"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4052568452505358126
        ChildIds: 4224217587692745723
        ChildIds: 13858547823939424963
        ChildIds: 3863777746134861272
        ChildIds: 12509998867505756076
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
        Id: 4224217587692745723
        Name: "Active Events"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11762050501954941276
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            String: "active"
          }
          Overrides {
            Name: "cs:IsEventCollection"
            Bool: true
          }
          Overrides {
            Name: "cs:CanRefresh"
            Bool: true
          }
          Overrides {
            Name: "cs:RefreshDurationInMinutes"
            Int: 6
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.929
              G: 0.321124494
              B: 0.0171866938
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13858547823939424963
        Name: "Most Engaging Games"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11762050501954941276
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            String: "most_engaging"
          }
          Overrides {
            Name: "cs:IsEventCollection"
            Bool: false
          }
          Overrides {
            Name: "cs:CanRefresh"
            Bool: false
          }
          Overrides {
            Name: "cs:RefreshDurationInMinutes"
            Int: 10
          }
          Overrides {
            Name: "cs:Color"
            Color {
              G: 0.308277816
              B: 0.950000048
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3863777746134861272
        Name: "Most Active Games"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11762050501954941276
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            String: "active"
          }
          Overrides {
            Name: "cs:IsEventCollection"
            Bool: false
          }
          Overrides {
            Name: "cs:CanRefresh"
            Bool: true
          }
          Overrides {
            Name: "cs:RefreshDurationInMinutes"
            Int: 5
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.00728467619
              G: 0.549999952
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12509998867505756076
        Name: "Tournament"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11762050501954941276
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            String: "tournament"
          }
          Overrides {
            Name: "cs:IsEventCollection"
            Bool: false
          }
          Overrides {
            Name: "cs:CanRefresh"
            Bool: false
          }
          Overrides {
            Name: "cs:RefreshDurationInMinutes"
            Int: 5
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 1
              G: 0.619735062
              B: 0.00999999
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2359029314344247370
        Name: "Unused"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4052568452505358126
        ChildIds: 12392962353045415981
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
        Id: 12392962353045415981
        Name: "Solo Friendly"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2359029314344247370
        UnregisteredParameters {
          Overrides {
            Name: "cs:ID"
            String: "solo_friendly"
          }
          Overrides {
            Name: "cs:IsEventCollection"
            Bool: false
          }
          Overrides {
            Name: "cs:CanRefresh"
            Bool: false
          }
          Overrides {
            Name: "cs:RefreshDurationInMinutes"
            Int: 10
          }
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.929
              G: 0.321124494
              B: 0.0171866938
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2864209598934083948
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
        ParentId: 4052568452505358126
        ChildIds: 15019580585484689908
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
        Id: 15019580585484689908
        Name: "PortalsManagerClient"
        Transform {
          Location {
            X: -10
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2864209598934083948
        UnregisteredParameters {
          Overrides {
            Name: "cs:Collections"
            ObjectReference {
              SubObjectId: 11762050501954941276
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
            Id: 7082069463851165639
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
