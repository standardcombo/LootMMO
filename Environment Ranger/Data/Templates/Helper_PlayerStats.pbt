Assets {
  Id: 12559898450615284556
  Name: "Helper_PlayerStats"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11993523709913650735
      Objects {
        Id: 11993523709913650735
        Name: "Helper_PlayerStats"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9643309343720198312
        ChildIds: 5742186729886157134
        UnregisteredParameters {
          Overrides {
            Name: "cs:PlayerId"
            String: ""
          }
          Overrides {
            Name: "cs:XP"
            Int: 0
          }
          Overrides {
            Name: "cs:HPA"
            Int: 0
          }
          Overrides {
            Name: "cs:HPM"
            Float: 0
          }
          Overrides {
            Name: "cs:HPF"
            String: ""
          }
          Overrides {
            Name: "cs:DFA"
            Int: 0
          }
          Overrides {
            Name: "cs:DFM"
            Float: 0
          }
          Overrides {
            Name: "cs:DFF"
            String: ""
          }
          Overrides {
            Name: "cs:ATA"
            Int: 0
          }
          Overrides {
            Name: "cs:ATM"
            Float: 0
          }
          Overrides {
            Name: "cs:ATF"
            String: ""
          }
          Overrides {
            Name: "cs:MAA"
            Int: 0
          }
          Overrides {
            Name: "cs:MAM"
            Float: 0
          }
          Overrides {
            Name: "cs:MAF"
            String: ""
          }
          Overrides {
            Name: "cs:CCA"
            Int: 0
          }
          Overrides {
            Name: "cs:CCM"
            Float: 0
          }
          Overrides {
            Name: "cs:CCF"
            String: ""
          }
          Overrides {
            Name: "cs:CDA"
            Int: 0
          }
          Overrides {
            Name: "cs:CDM"
            Float: 0
          }
          Overrides {
            Name: "cs:CDF"
            String: ""
          }
          Overrides {
            Name: "cs:HSA"
            Int: 0
          }
          Overrides {
            Name: "cs:HSM"
            Float: 0
          }
          Overrides {
            Name: "cs:HSF"
            String: ""
          }
          Overrides {
            Name: "cs:TEA"
            Int: 0
          }
          Overrides {
            Name: "cs:TEM"
            Float: 0
          }
          Overrides {
            Name: "cs:TEF"
            String: ""
          }
          Overrides {
            Name: "cs:PlayerId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:XP:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HPA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HPM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HPF:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:DFA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:DFM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:DFF:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ATA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ATM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:ATF:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:MAA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:MAM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:MAF:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CCA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CCM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CCF:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CDA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CDM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CDF:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HSA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HSM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:HSF:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:TEA:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:TEM:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:TEF:isrep"
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9643309343720198312
        Name: "Server"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11993523709913650735
        ChildIds: 10895393548575320212
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
        Id: 10895393548575320212
        Name: "PlayerStats_StatSheetReplicator"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9643309343720198312
        UnregisteredParameters {
          Overrides {
            Name: "cs:COMPONENT"
            ObjectReference {
              SubObjectId: 11993523709913650735
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
            Id: 12619605417933633749
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5742186729886157134
        Name: "Client"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11993523709913650735
        ChildIds: 13359193584715916437
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
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13359193584715916437
        Name: "PlayerStats_StatSheetReplicator"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5742186729886157134
        UnregisteredParameters {
          Overrides {
            Name: "cs:COMPONENT"
            ObjectReference {
              SubObjectId: 11993523709913650735
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
            Id: 12619605417933633749
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
