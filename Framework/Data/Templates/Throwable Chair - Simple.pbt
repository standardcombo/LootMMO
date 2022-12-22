Assets {
  Id: 16210562222962956204
  Name: "Throwable Chair - Simple"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3535313216829059241
      Objects {
        Id: 3535313216829059241
        Name: "Throwable Chair"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5582897888583595778
        ChildIds: 137470040635331513
        ChildIds: 12773986218779261531
        ChildIds: 12237637386200102473
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
        Equipment {
          SocketName: "upper_spine"
          PickupTrigger {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:medium"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 137470040635331513
        Name: "Nice Chair"
        Transform {
          Location {
            X: -2.17626953
            Y: 0.0921630859
            Z: 0.78915447
          }
          Rotation {
            Yaw: -89.9999619
            Roll: -3.09689203e-05
          }
          Scale {
            X: 0.999999762
            Y: 0.999999762
            Z: 0.999999762
          }
        }
        ParentId: 3535313216829059241
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3817933812062928360
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.742648959
              B: 0.329999983
              A: 1
            }
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11452126672691922020
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
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
        Id: 12773986218779261531
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
        ParentId: 3535313216829059241
        ChildIds: 6276468096784026197
        ChildIds: 5929365418604021812
        ChildIds: 14040850750477502236
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6276468096784026197
        Name: "ThrowableObjectServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12773986218779261531
        UnregisteredParameters {
          Overrides {
            Name: "cs:SpineAnchor"
            ObjectReference {
              SubObjectId: 5929365418604021812
            }
          }
          Overrides {
            Name: "cs:PhysicsAnchor"
            ObjectReference {
              SubObjectId: 14040850750477502236
            }
          }
          Overrides {
            Name: "cs:Collider"
            ObjectReference {
              SubObjectId: 137470040635331513
            }
          }
          Overrides {
            Name: "cs:PhysicsTemplate"
            AssetReference {
              Id: 15071796687113620886
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
            Id: 7318858477642949677
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:low"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5929365418604021812
        Name: "Spine Anchor"
        Transform {
          Location {
            X: 44.3471184
            Z: 160.85083
          }
          Rotation {
            Pitch: 39.6324806
            Yaw: -179.999893
            Roll: -179.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12773986218779261531
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
        Id: 14040850750477502236
        Name: "Physics Anchor"
        Transform {
          Location {
            X: 28.894043
            Z: 73.5022888
          }
          Rotation {
            Pitch: 5.5086565
          }
          Scale {
            X: 0.87001127
            Y: 0.87001127
            Z: 0.87001127
          }
        }
        ParentId: 12773986218779261531
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
        Id: 12237637386200102473
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
        ParentId: 3535313216829059241
        ChildIds: 15289522572954762697
        ChildIds: 5480936993900602652
        ChildIds: 2847109803632221661
        ChildIds: 16683824766095356992
        WantsNetworking: true
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
        Id: 15289522572954762697
        Name: "ThrowableObjectClient"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -89.9999771
            Roll: -3.09689203e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12237637386200102473
        UnregisteredParameters {
          Overrides {
            Name: "cs:LeftHandAnchor"
            ObjectReference {
              SubObjectId: 2847109803632221661
            }
          }
          Overrides {
            Name: "cs:RightHandAnchor"
            ObjectReference {
              SubObjectId: 16683824766095356992
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 5480936993900602652
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
            Id: 13467774191528522221
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:low"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5480936993900602652
        Name: "BoxTrigger"
        Transform {
          Location {
            X: 3.05175781e-05
            Z: 69.9999847
          }
          Rotation {
          }
          Scale {
            X: 0.413184017
            Y: 0.413184017
            Z: 0.413184017
          }
        }
        ParentId: 12237637386200102473
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
        Trigger {
          Interactable: true
          InteractionLabel: "Pickup Chair"
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
        Id: 2847109803632221661
        Name: "Left Hand"
        Transform {
          Location {
            X: 6.63015747
            Y: -32.960083
            Z: 135.359
          }
          Rotation {
            Pitch: -52.4952393
            Yaw: -179.999969
            Roll: 179.999985
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12237637386200102473
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -20
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16683824766095356992
        Name: "Right Hand"
        Transform {
          Location {
            X: 6.63012695
            Y: 32.9600067
            Z: 135.359
          }
          Rotation {
            Pitch: -52.4952202
            Yaw: -179.999939
            Roll: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12237637386200102473
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -20
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 11452126672691922020
      Name: "Craftsman Dining Chair"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_chair_dining_001"
      }
    }
    Assets {
      Id: 3817933812062928360
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_001_uv"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 123
  VirtualFolderPath: "Social Elements"
}
