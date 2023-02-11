Assets {
  Id: 15915512215793556248
  Name: "Lot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3409527865841483850
      Objects {
        Id: 3409527865841483850
        Name: "Lot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7763771515137704707
        ChildIds: 4082354890195419427
        ChildIds: 14753341459575038258
        ChildIds: 16803546555240560068
        ChildIds: 15418390041635190377
        ChildIds: 15023966788258449708
        ChildIds: 4193327190895081562
        ChildIds: 1573522195743784950
        ChildIds: 12573455378665039679
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
        Id: 4082354890195419427
        Name: "Player Lot Object Loader (Custom Properties, signs are here)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 14143774564297347497
        ChildIds: 3698898734107538674
        ChildIds: 13154378364981086206
        UnregisteredParameters {
          Overrides {
            Name: "cs:RequiresOwnerToLoad"
            Bool: true
          }
          Overrides {
            Name: "cs:RequiresNoOwnerToLoad"
            Bool: false
          }
          Overrides {
            Name: "cs:ServerAsset"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:StaticAsset"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:ClientAsset"
            AssetReference {
              Id: 8883794696498135995
            }
          }
          Overrides {
            Name: "cs:RequiresOwnerToLoad:tooltip"
            String: "If true, will only load the objects if the Player Lot has an owner. Objects will be unloaded if the owner is cleared."
          }
          Overrides {
            Name: "cs:RequiresNoOwnerToLoad:tooltip"
            String: "If true, will only load the objects if the Player Lot does not have an owner. Objects will be unloaded if the owner is set."
          }
          Overrides {
            Name: "cs:ServerAsset:tooltip"
            String: "(Optional) A template to spawn into a Server Context when the Player Lot Loads. This template will be destroyed when the Player Lot unloads."
          }
          Overrides {
            Name: "cs:StaticAsset:tooltip"
            String: "(Optional) A template to spawn into a Static Context when the Player Lot Loads. This template will be destroyed when the Player Lot unloads."
          }
          Overrides {
            Name: "cs:ClientAsset:tooltip"
            String: "(Optional) A template to spawn into a Client Context when the Player Lot Loads. This template will be destroyed when the Player Lot unloads."
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
        Id: 14143774564297347497
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
        ParentId: 4082354890195419427
        ChildIds: 14112748337344791890
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
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14112748337344791890
        Name: "PlayerLotObjectLoader"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14143774564297347497
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 4082354890195419427
            }
          }
          Overrides {
            Name: "cs:StaticRoot"
            ObjectReference {
              SubObjectId: 13154378364981086206
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
            Id: 1762613676229157158
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3698898734107538674
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
        ParentId: 4082354890195419427
        ChildIds: 1824171738205493811
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
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1824171738205493811
        Name: "PlayerLotObjectLoader"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 6.83018243e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3698898734107538674
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 4082354890195419427
            }
          }
          Overrides {
            Name: "cs:StaticRoot"
            ObjectReference {
              SubObjectId: 13154378364981086206
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
            Id: 1762613676229157158
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13154378364981086206
        Name: "StaticContext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4082354890195419427
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
          Type: RuntimeStatic
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14753341459575038258
        Name: "Player Lot Setup"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 8682847442020341866
        ChildIds: 4953847334512351836
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerLot"
            ObjectReference {
              SubObjectId: 3409527865841483850
            }
          }
          Overrides {
            Name: "cs:LotType"
            String: "Player Lot"
          }
          Overrides {
            Name: "cs:OwnerOnly"
            Bool: true
          }
          Overrides {
            Name: "cs:PlayerLot:tooltip"
            String: "(Optional) If set, the referenced object will be considered the root of this Player Lot. Otherwise the parent of this object will be used."
          }
          Overrides {
            Name: "cs:LotType:tooltip"
            String: "(Optional) This can be used to assign Players to a specific Lot or group of Lots."
          }
          Overrides {
            Name: "cs:OwnerOnly:tooltip"
            String: "If true, any dynamic objects on the lot, such as Gatherables and Producers, will only be accessible to the owner."
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
        Id: 8682847442020341866
        Name: "PlayerLotServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14753341459575038258
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 14753341459575038258
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
            Id: 12900917764535770142
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4953847334512351836
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
        ParentId: 14753341459575038258
        ChildIds: 16373690075706344418
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
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16373690075706344418
        Name: "PlayerLotClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4953847334512351836
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 14753341459575038258
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
            Id: 1641217962597346140
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16803546555240560068
        Name: "Player Lot Spawn Point"
        Transform {
          Location {
            X: 3521.0813
            Y: 181.935959
            Z: 114.999756
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 2011773384054244235
        ChildIds: 13009021602828367251
        ChildIds: 1266177733892533752
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerLot"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:SpawnPointKey"
            String: ""
          }
          Overrides {
            Name: "cs:PlayerLot:tooltip"
            String: "(Optional) This should be assigned to a group of objects that represents a Player Lot. This will automatically find the Lot it is inside if left blank."
          }
          Overrides {
            Name: "cs:SpawnPointKey:tooltip"
            String: "(Optional) If set, this will allow portals and other teleport methods to target this spawn point."
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
        Id: 2011773384054244235
        Name: "PlayerLotSpawnPoint"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16803546555240560068
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 16803546555240560068
            }
          }
          Overrides {
            Name: "cs:Target"
            ObjectReference {
              SubObjectId: 1266177733892533752
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
            Id: 6645690084526841844
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13009021602828367251
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
        ParentId: 16803546555240560068
        ChildIds: 8269135629241883444
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
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8269135629241883444
        Name: "PlayerLotSpawnPoint"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -6.83018879e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13009021602828367251
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 16803546555240560068
            }
          }
          Overrides {
            Name: "cs:Target"
            ObjectReference {
              SubObjectId: 1266177733892533752
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
            Id: 6645690084526841844
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1266177733892533752
        Name: "Target"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16803546555240560068
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:2"
            }
          }
          Overrides {
            Name: "bp:X Offset"
            Float: 0
          }
          Overrides {
            Name: "bp:Y Offset"
            Float: 0
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 2.3
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 15418390041635190377
        Name: "Placeables"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 16119291400337707578
        ChildIds: 5427387189811122508
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16119291400337707578
        Name: "Player Lot Replicator Loader"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15418390041635190377
        ChildIds: 11641481670869892287
        ChildIds: 2795403476742746980
        UnregisteredParameters {
          Overrides {
            Name: "cs:RequireOwnerToLoad"
            Bool: true
          }
          Overrides {
            Name: "cs:Replicator"
            ObjectReference {
              SubObjectId: 5427387189811122508
            }
          }
          Overrides {
            Name: "cs:SharedStorageKey"
            NetReference {
              Type {
                Value: "mc:enetreferencetype:unknown"
              }
            }
          }
          Overrides {
            Name: "cs:StorageKey"
            String: "Placeables1"
          }
          Overrides {
            Name: "cs:Identifier"
            String: "Player Lot"
          }
          Overrides {
            Name: "cs:Populate"
            Bool: true
          }
          Overrides {
            Name: "cs:Replicator:tooltip"
            String: "Loads and unloads the Replicator when the Player Lot loads and unloads. This should point to the object with the \"UserFunctions\" and \"Parent\" properties."
          }
          Overrides {
            Name: "cs:StorageKey:tooltip"
            String: "The key to use for storing the data in Player Storage for this Replicator. This should be unique across all Replicators."
          }
          Overrides {
            Name: "cs:Identifier:tooltip"
            String: "A tag that can be used to limit what can be placed in the Replicator or allow other scripts to pick out this specific Replicator."
          }
          Overrides {
            Name: "cs:Populate:tooltip"
            String: "If true, and the Replicator has objects already existing in its Static Context folder, these objects will be added to its internal state and saved."
          }
          Overrides {
            Name: "cs:SharedStorageKey:tooltip"
            String: "An optional Shared Storage Key to save and load the replicator data from."
          }
          Overrides {
            Name: "cs:RequireOwnerToLoad:tooltip"
            String: "If true, the Replicator will not load until the Player Lot has an owner."
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
        Id: 11641481670869892287
        Name: "PlayerLotReplicatorLoaderServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16119291400337707578
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 16119291400337707578
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
            Id: 13139588374210945403
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2795403476742746980
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
        ParentId: 16119291400337707578
        ChildIds: 11917368187544367043
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
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11917368187544367043
        Name: "PlayerLotReplicatorLoaderClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2795403476742746980
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 16119291400337707578
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
            Id: 10089811666579520288
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5427387189811122508
        Name: "PlaceablesReplicator"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15418390041635190377
        ChildIds: 3203175468739370318
        ChildIds: 7705949697100881277
        ChildIds: 14643231308531810187
        UnregisteredParameters {
          Overrides {
            Name: "cs:UserFunctions"
            AssetReference {
              Id: 3797820098805527651
            }
          }
          Overrides {
            Name: "cs:Parent"
            ObjectReference {
              SubObjectId: 14643231308531810187
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3203175468739370318
        Name: "CoreHierarchyReplicatorServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5427387189811122508
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 5427387189811122508
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
            Id: 13852825441613215519
          }
        }
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7705949697100881277
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
        ParentId: 5427387189811122508
        ChildIds: 1679639988658225608
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
        IsAdvanced: true
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1679639988658225608
        Name: "CoreHierarchyReplicatorClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7705949697100881277
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 5427387189811122508
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
            Id: 5462950747896091420
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14643231308531810187
        Name: "ReplicatedCoreObjects (If changing these, hit F1 to update data)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5427387189811122508
        ChildIds: 15173688722041780010
        ChildIds: 6556669473264120621
        ChildIds: 14755251328247444432
        ChildIds: 8840082448395261849
        ChildIds: 17880535293619840829
        ChildIds: 14197963164315481363
        ChildIds: 15686935927880498588
        ChildIds: 4344616819638970573
        ChildIds: 4736918998350598829
        ChildIds: 7543633146134821248
        ChildIds: 4044181126775559315
        ChildIds: 14646225030242470761
        ChildIds: 15333150899777243240
        ChildIds: 11299891343445602551
        ChildIds: 13977799252619268077
        ChildIds: 10963619025696347460
        ChildIds: 15523791791502188443
        ChildIds: 13880646800040403624
        ChildIds: 2937997035989591313
        ChildIds: 10710492355473367512
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
          Type: RuntimeStatic
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15173688722041780010
        Name: "Prebuilt Red Fruit Bush"
        Transform {
          Location {
            X: 2150.94629
            Y: 99.1331787
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 1018293605440572405
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Soil Mound"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Red Fruit Bush"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 1018293605440572405
        Name: "Dummy Object"
        Transform {
          Location {
            X: 91.4002533
            Y: -34.224678
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15173688722041780010
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:2"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.64
              B: 0.105960384
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 2.33690929
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.67091346
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 65.4888306
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 6556669473264120621
        Name: "Prebuilt Yellow Fruit Bush"
        Transform {
          Location {
            X: 2161.98804
            Y: 282.760742
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 9678105831001739250
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Soil Mound"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Yellow Fruit Bush"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 9678105831001739250
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6556669473264120621
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.31072855
              G: 0.690000057
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.456450164
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 2.29773307
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 19.5853577
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 2.45443797
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 14755251328247444432
        Name: "Prebuilt Yellow Fruit Bush"
        Transform {
          Location {
            X: 2471.31299
            Y: -86.3839111
          }
          Rotation {
            Yaw: 53.1832886
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 1186521705174814479
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Soil Mound"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Yellow Fruit Bush"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 1186521705174814479
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14755251328247444432
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.31072855
              G: 0.690000057
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.456450164
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 2.29773307
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 19.5853577
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 2.45443797
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 8840082448395261849
        Name: "Prebuilt Campfire Ring"
        Transform {
          Location {
            X: 1290.28894
            Y: 939.87
            Z: 2.7
          }
          Rotation {
            Yaw: 53.1832886
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 11969505656575306566
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Campfire Ring"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 11969505656575306566
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8840082448395261849
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:1"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.241000012
              G: 0.241000012
              B: 0.241000012
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.456450164
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.74926591
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 19.5853577
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.49562636
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 17880535293619840829
        Name: "Prebuilt Cooking Spit"
        Transform {
          Location {
            X: 1290.28894
            Y: 939.87
            Z: 2.7
          }
          Rotation {
            Yaw: 18.4447136
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 2636327347157687266
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Cooking Spit"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 2636327347157687266
        Name: "Dummy Object"
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
        ParentId: 17880535293619840829
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.131125778
              B: 0.36
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 1.23997486
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 2.45443797
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 55.9915619
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.338921487
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 14197963164315481363
        Name: "Prebuilt Furnace"
        Transform {
          Location {
            X: 88.525177
            Y: -454.903046
            Z: 2.7
          }
          Rotation {
            Yaw: 144.574722
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 1854143404500978124
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Furnace"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 1854143404500978124
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14197963164315481363
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:2"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 2.92455292
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.23997486
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 55.9915619
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 2.21938062
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 15686935927880498588
        Name: "Prebuilt Furnace"
        Transform {
          Location {
            X: -32.3094254
            Y: -235.293228
            Z: 2.70006108
          }
          Rotation {
            Yaw: 97.6665039
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 360640644438409539
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Furnace"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 360640644438409539
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15686935927880498588
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:2"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 2.92455292
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.23997486
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 55.9915619
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 2.21938062
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 4344616819638970573
        Name: "Prebuilt Iron Ore Crate"
        Transform {
          Location {
            X: 836.293274
            Y: -447.857727
            Z: 2.69993901
          }
          Rotation {
            Yaw: 40.5978241
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 16211089655720072210
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Iron Ore Crate"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Iron Ore Crate"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 16211089655720072210
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4344616819638970573
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.208609149
              B: 0.450000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.613155127
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.67091346
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 29.0826263
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.730683804
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 4736918998350598829
        Name: "Prebuilt Iron Ore Crate"
        Transform {
          Location {
            X: 786.43457
            Y: -546.01947
            Z: 2.69993901
          }
          Rotation {
            Yaw: 40.5978241
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 11317153780422438514
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Iron Ore Crate"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Iron Ore Crate"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 11317153780422438514
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4736918998350598829
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.208609149
              B: 0.450000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.613155127
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.67091346
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 29.0826263
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.730683804
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 7543633146134821248
        Name: "Prebuilt Iron Ore Crate"
        Transform {
          Location {
            X: 678.115112
            Y: -574.224731
            Z: 2.69993901
          }
          Rotation {
            Yaw: 40.5978241
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 12970982364297200991
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Iron Ore Crate"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Iron Ore Crate"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 12970982364297200991
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7543633146134821248
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.208609149
              B: 0.450000048
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.613155127
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.67091346
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 29.0826263
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.730683804
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 0.926565
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 4044181126775559315
        Name: "Prebuilt Mutation Tank"
        Transform {
          Location {
            X: -1768.15576
            Y: 956.73584
            Z: 2.7
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 16478003163098196044
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Mutation Tank"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 16478003163098196044
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4044181126775559315
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:2"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.383443594
              G: 1
              B: 0.0199999809
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 75.7775421
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 2.74408412
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.44790709
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 1.25151658
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 14646225030242470761
        Name: "Prebuilt Mutation Tank"
        Transform {
          Location {
            X: -1913.95288
            Y: 1052.07922
            Z: 2.7
          }
          Rotation {
            Yaw: 69.8237381
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 1725909778820593590
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Mutation Tank"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 1725909778820593590
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14646225030242470761
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:2"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.383443594
              G: 1
              B: 0.0199999809
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 75.7775421
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 2.74408412
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.44790709
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 1.25151658
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 15333150899777243240
        Name: "Prebuilt Mutation Tank"
        Transform {
          Location {
            X: -2533.97461
            Y: 793.21106
            Z: 2.69987798
          }
          Rotation {
            Yaw: 24.2442093
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 610301922366190775
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Mutation Tank"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 610301922366190775
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15333150899777243240
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:2"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.383443594
              G: 1
              B: 0.0199999809
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 75.7775421
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 2.74408412
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.44790709
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 1.25151658
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 11299891343445602551
        Name: "Prebuilt Dragon Cave"
        Transform {
          Location {
            X: -2674.56836
            Y: -1197.34912
            Z: 2.7
          }
          Rotation {
            Yaw: 122.5373
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 4639612045613255720
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Dragon Cave"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 4639612045613255720
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11299891343445602551
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.450000048
              G: 0.151986778
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 99.5207062
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 1.94514704
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 2.76784778
          }
          Overrides {
            Name: "bp:Y Offset"
            Float: -15.2379608
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 13977799252619268077
        Name: "Prebuilt Dragon Cave"
        Transform {
          Location {
            X: -1811.17126
            Y: -1423.3606
            Z: 2.69987798
          }
          Rotation {
            Yaw: -158.409
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 2110340498343818034
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Dragon Cave"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 2110340498343818034
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13977799252619268077
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.450000048
              G: 0.151986778
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 99.5207062
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 1.94514704
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 2.76784778
          }
          Overrides {
            Name: "bp:Y Offset"
            Float: -15.2379608
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 10963619025696347460
        Name: "Prebuilt Dragon Cave"
        Transform {
          Location {
            X: -1501.03467
            Y: -1212.48853
            Z: 2.69987798
          }
          Rotation {
            Yaw: -130.357895
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 4941830563065014683
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Dragon Cave"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: ""
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 4941830563065014683
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10963619025696347460
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.450000048
              G: 0.151986778
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 99.5207062
          }
          Overrides {
            Name: "bp:Scale Multiplier"
            Float: 1
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 1.94514704
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 2.76784778
          }
          Overrides {
            Name: "bp:Y Offset"
            Float: -15.2379608
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 15523791791502188443
        Name: "Prebuilt Trader Dragon Cave"
        Transform {
          Location {
            X: -2903.8125
            Y: -485.736084
            Z: 79.1634521
          }
          Rotation {
            Yaw: 89.6233902
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 855094310040511300
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Trader Shop Base"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Trader Dragon Cave"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 855094310040511300
        Name: "Dummy Object"
        Transform {
          Location {
            X: 0.000177383423
            Y: 14.3133535
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15523791791502188443
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Y Offset"
            Float: -2.4850769
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.12825358
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 1.50812697
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 38.6766052
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 13880646800040403624
        Name: "Prebuilt Trader Mutation Tank"
        Transform {
          Location {
            X: -2901.01172
            Y: -58.4038086
            Z: 79.1634521
          }
          Rotation {
            Yaw: 89.6233368
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 2023109523834855031
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Trader Shop Base"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Trader Mutation Tank"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 2023109523834855031
        Name: "Dummy Object"
        Transform {
          Location {
            X: 0.000162124634
            Y: 14.3133478
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13880646800040403624
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Y Offset"
            Float: -2.4850769
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.12825358
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 1.50812697
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 38.6766052
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 2937997035989591313
        Name: "Prebuilt Trader Mutation Slime"
        Transform {
          Location {
            X: -2902.44067
            Y: -274.900879
            Z: 79.1634521
          }
          Rotation {
            Yaw: 89.6233368
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 17615739098092247502
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Trader Shop Base"
          }
          Overrides {
            Name: "cs:ProducerId"
            String: "Trader Mutation Slime"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
          }
          Overrides {
            Name: "cs:ProducerId:tooltip"
            String: "The Producer Id. This should exist in a Database in the Producers category."
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
        Id: 17615739098092247502
        Name: "Dummy Object"
        Transform {
          Location {
            X: 0.000164031982
            Y: 14.3133535
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2937997035989591313
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Y Offset"
            Float: -2.4850769
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 1.12825358
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 1.50812697
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 38.6766052
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 10710492355473367512
        Name: "Prebuilt Cheat Chest"
        Transform {
          Location {
            X: 2993.83447
            Y: 692.699463
            Z: -6.10351562e-05
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14643231308531810187
        ChildIds: 16254511419987853783
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlaceableId"
            String: "Cheat Chest"
          }
          Overrides {
            Name: "cs:InventoryId"
            String: "cheatChest"
          }
          Overrides {
            Name: "cs:PlaceableId:tooltip"
            String: "The Producer Base / Placeable Id. This should exist in a Database in the Placeables category."
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
        Id: 16254511419987853783
        Name: "Dummy Object"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10710492355473367512
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.179999948
              G: 0.0286092702
              A: 1
            }
          }
          Overrides {
            Name: "bp:Z Scale"
            Float: 0.417273909
          }
          Overrides {
            Name: "bp:Z Offset"
            Float: 17.2110443
          }
          Overrides {
            Name: "bp:X Scale"
            Float: 0.769860089
          }
          Overrides {
            Name: "bp:Y Scale"
            Float: 0.769860089
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
            Id: 15895911216899816748
          }
          TeamSettings {
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
        Id: 15023966788258449708
        Name: "Player Lot Owner Display"
        Transform {
          Location {
            X: 3104.06152
            Y: 259.357239
            Z: 606.744751
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 14529447964922503394
        UnregisteredParameters {
          Overrides {
            Name: "cs:TextForNoOwner"
            String: "Empty"
          }
          Overrides {
            Name: "cs:TextForOnlineOwner"
            String: "{name} Lot"
          }
          Overrides {
            Name: "cs:TextForOfflineOwner"
            String: "Owner Offline"
          }
          Overrides {
            Name: "cs:TextForNoOwner:tooltip"
            String: "This text will display if the Player Lot doesn not have an owner."
          }
          Overrides {
            Name: "cs:TextForNoOwner:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:TextForNoOwner:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:TextForOnlineOwner:tooltip"
            String: "This text will display if the Player Lot has an owner. {name} will be replaced with the Players name if used."
          }
          Overrides {
            Name: "cs:TextForOnlineOwner:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:TextForOnlineOwner:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:TextForOfflineOwner:tooltip"
            String: "This text will display if the Player Lot has an owner but they are offline."
          }
          Overrides {
            Name: "cs:TextForOfflineOwner:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:TextForOfflineOwner:ml"
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
        Id: 14529447964922503394
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
        ParentId: 15023966788258449708
        ChildIds: 17202772327861443268
        ChildIds: 1769666466108715466
        ChildIds: 7476412844652076418
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
        Id: 17202772327861443268
        Name: "PlayerLotOwnerDisplayClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14529447964922503394
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 15023966788258449708
            }
          }
          Overrides {
            Name: "cs:NameText"
            ObjectReference {
              SubObjectId: 14033299944553593720
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
            Id: 8839508320610141711
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1769666466108715466
        Name: "UI Container"
        Transform {
          Location {
            X: 3.71155167
            Y: -58.6570511
            Z: -2.46594238
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14529447964922503394
        ChildIds: 14033299944553593720
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
            CanvasWorldSize {
              X: 500
              Y: 110
            }
            RedrawTime: 30
            IsLit: true
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14033299944553593720
        Name: "Name Label"
        Transform {
          Location {
            X: 3144.82373
            Y: -2089.61157
            Z: -606.744751
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 2.01591587
            Y: 8.35841751
            Z: 1
          }
        }
        ParentId: 1769666466108715466
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
          Width: -50
          UIY: -5
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Text {
            Label: "Player Name"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 36
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 841534158063459245
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScaleToFit: true
            OutlineColor {
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7476412844652076418
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -1.77592409
            Y: -63.0864258
            Z: -3.13446045
          }
          Rotation {
            Yaw: 179.999954
          }
          Scale {
            X: 0.1
            Y: 4.93428802
            Z: 1.15420222
          }
        }
        ParentId: 14529447964922503394
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
              R: 0.0310000014
              G: 0.0310000014
              B: 0.0310000014
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
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
        Id: 4193327190895081562
        Name: "Dirt (Farmable Area)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 12395109476197560024
        ChildIds: 10260753165514362589
        ChildIds: 16516391315399122624
        UnregisteredParameters {
          Overrides {
            Name: "cs:AreaType"
            String: "Dirt"
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
        Id: 12395109476197560024
        Name: "PlacementArea"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4193327190895081562
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 4193327190895081562
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
            Id: 9636352104614576934
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10260753165514362589
        Name: "Cylinder"
        Transform {
          Location {
            X: 2537.79712
            Y: 194.10463
            Z: 0.999755859
          }
          Rotation {
            Yaw: -4.09811328e-05
          }
          Scale {
            X: 9.68804646
            Y: 8.60307
            Z: 0.00819824729
          }
        }
        ParentId: 4193327190895081562
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14643090495247569259
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
            Id: 1137112816547272582
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
        Id: 16516391315399122624
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
        ParentId: 4193327190895081562
        ChildIds: 962476098163229661
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
        Id: 962476098163229661
        Name: "PlacementArea"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16516391315399122624
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 4193327190895081562
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
            Id: 9636352104614576934
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1573522195743784950
        Name: "Paved (Placeable Area)"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 1924862629584396844
        ChildIds: 14354655854017381419
        ChildIds: 10702522850499617268
        ChildIds: 17370121165279616363
        ChildIds: 15137266238492099423
        ChildIds: 3736025791861249848
        ChildIds: 738060923316970973
        ChildIds: 6902882792843766049
        ChildIds: 18148572556991262668
        ChildIds: 13397057365174867512
        ChildIds: 13501403450772430643
        UnregisteredParameters {
          Overrides {
            Name: "cs:AreaType"
            String: "Paved"
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
        Id: 1924862629584396844
        Name: "PlacementArea"
        Transform {
          Location {
            Z: 100
          }
          Rotation {
          }
          Scale {
            X: 0.99999994
            Y: 1
            Z: 1
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 1573522195743784950
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
            Id: 9636352104614576934
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14354655854017381419
        Name: "Cylinder"
        Transform {
          Location {
            X: 1416.08105
            Y: 741.46283
            Z: 1
          }
          Rotation {
            Yaw: -4.09811328e-05
          }
          Scale {
            X: 15.1568289
            Y: 11.3161659
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 1137112816547272582
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
        Id: 10702522850499617268
        Name: "Crescent - 03"
        Transform {
          Location {
            X: 2305.67212
            Y: 806.23175
            Z: 0.999755859
          }
          Rotation {
            Yaw: 64.2229843
          }
          Scale {
            X: 4.53484726
            Y: 5.8540554
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 172372313931898727
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
        Id: 17370121165279616363
        Name: "Cylinder"
        Transform {
          Location {
            X: 2537.79712
            Y: 194.10463
            Z: 0.999755859
          }
          Rotation {
            Yaw: -4.09811328e-05
          }
          Scale {
            X: 12.7433043
            Y: 11.3161659
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 1137112816547272582
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
        Id: 15137266238492099423
        Name: "Crescent - 03"
        Transform {
          Location {
            X: 1556.21179
            Y: -131.514297
            Z: 1
          }
          Rotation {
            Yaw: -75.6004639
          }
          Scale {
            X: 11.3161669
            Y: 11.5035763
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 172372313931898727
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
        Id: 3736025791861249848
        Name: "Cylinder"
        Transform {
          Location {
            X: 406.904755
            Y: -59.0588837
            Z: 1
          }
          Rotation {
            Yaw: 71.0626221
          }
          Scale {
            X: 15.156827
            Y: 15.4708147
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 1137112816547272582
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
        Id: 738060923316970973
        Name: "Crescent - 03"
        Transform {
          Location {
            X: 558.836
            Y: 789.700745
            Z: 0.999755859
          }
          Rotation {
            Yaw: 121.595955
          }
          Scale {
            X: 6.18626213
            Y: 5.85405302
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 172372313931898727
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
        Id: 6902882792843766049
        Name: "Crescent - 03"
        Transform {
          Location {
            X: -630.74408
            Y: -597.529114
            Z: 1.00024414
          }
          Rotation {
            Yaw: -78.3922
          }
          Scale {
            X: 14.6645098
            Y: 12.4057274
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 172372313931898727
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
        Id: 18148572556991262668
        Name: "Crescent - 03"
        Transform {
          Location {
            X: -710.482239
            Y: 213.36232
            Z: 1.00024414
          }
          Rotation {
            Yaw: 78.8545
          }
          Scale {
            X: 14.5735798
            Y: 9.83646679
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 172372313931898727
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
        Id: 13397057365174867512
        Name: "Cylinder"
        Transform {
          Location {
            X: -2069.35425
            Y: -211.399399
            Z: 1.00012207
          }
          Rotation {
            Yaw: -94.7751465
          }
          Scale {
            X: 28.400631
            Y: 21.4238205
            Z: 0.005
          }
        }
        ParentId: 1573522195743784950
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15697206862897547361
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
            Id: 1137112816547272582
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
        Id: 13501403450772430643
        Name: "ClientContext"
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
        ParentId: 1573522195743784950
        ChildIds: 16743420619235492967
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
        Id: 16743420619235492967
        Name: "PlacementArea"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.99999994
            Y: 1
            Z: 1
          }
        }
        ParentId: 13501403450772430643
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 1573522195743784950
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
            Id: 9636352104614576934
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12573455378665039679
        Name: "Geo with Collision"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3409527865841483850
        ChildIds: 6202456668008317909
        ChildIds: 4151539604523186100
        ChildIds: 15622676373820634761
        ChildIds: 5553761159403817595
        ChildIds: 6564191136792211745
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
        Id: 6202456668008317909
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -2962.17554
            Y: -272.563721
            Z: -1.90827942
          }
          Rotation {
            Yaw: 179.999969
          }
          Scale {
            X: 1.54244149
            Y: 6.27925062
            Z: 1.63361931
          }
        }
        ParentId: 12573455378665039679
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14231809728886464860
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
            Id: 11162297399913732681
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
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
        Id: 4151539604523186100
        Name: "Arch"
        Transform {
          Location {
            X: 3065.05835
            Y: 199.487061
            Z: 284.413757
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9999466
            Roll: 89.9999771
          }
          Scale {
            X: 4.40551519
            Y: 4.40551519
            Z: 0.35526827
          }
        }
        ParentId: 12573455378665039679
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7674703739698457209
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 2
              G: 1.62635767
              B: 1.38
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13425786293211876696
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
        Id: 15622676373820634761
        Name: "Main Street Pillar 02"
        Transform {
          Location {
            X: 3064.03906
            Y: -75.3820724
            Z: 3.05175781e-05
          }
          Rotation {
            Yaw: 89.9999466
          }
          Scale {
            X: 1.18883407
            Y: 1.18883407
            Z: 0.826951146
          }
        }
        ParentId: 12573455378665039679
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7674703739698457209
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 2
              G: 1.62635767
              B: 1.38
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9868007178997158849
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
        Id: 5553761159403817595
        Name: "Main Street Pillar 02"
        Transform {
          Location {
            X: 3064.03931
            Y: 473.190186
            Z: 3.05175781e-05
          }
          Rotation {
            Yaw: 89.9999466
          }
          Scale {
            X: 1.18883407
            Y: 1.18883407
            Z: 0.826951146
          }
        }
        ParentId: 12573455378665039679
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7674703739698457209
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 2
              G: 1.62635767
              B: 1.38
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9868007178997158849
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
        Id: 6564191136792211745
        Name: "Cube - Polished"
        Transform {
          Location {
            X: 3095.32373
            Y: 196.270248
            Z: 603.610291
          }
          Rotation {
            Yaw: 179.999954
          }
          Scale {
            X: 0.199999928
            Y: 5.52641296
            Z: 1.600214
          }
        }
        ParentId: 12573455378665039679
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14231809728886464860
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
            Id: 11162297399913732681
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
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
      Id: 15895911216899816748
      Name: "Dummy Object"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_dummy_pivot"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
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
      Id: 1137112816547272582
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 14643090495247569259
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
    Assets {
      Id: 15697206862897547361
      Name: "Bricks Rough Stone Floor 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_brick_stone_floor_rough_002"
      }
    }
    Assets {
      Id: 172372313931898727
      Name: "Crescent - 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crescent_003"
      }
    }
    Assets {
      Id: 11162297399913732681
      Name: "Cube - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_test_001"
      }
    }
    Assets {
      Id: 14231809728886464860
      Name: "Wood Raw White"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_white_001_uv"
      }
    }
    Assets {
      Id: 13425786293211876696
      Name: "Arch"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arch_001"
      }
    }
    Assets {
      Id: 7674703739698457209
      Name: "Granite 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_rock_granite_001_uv_ref"
      }
    }
    Assets {
      Id: 9868007178997158849
      Name: "Main Street Pillar 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_urb_dtn_mst_pillar_002_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Other"
}
