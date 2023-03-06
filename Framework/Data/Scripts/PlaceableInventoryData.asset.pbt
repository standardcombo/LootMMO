Assets {
  Id: 12523835813731389078
  Name: "PlaceableInventoryData"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Name"
        String: ""
      }
      Overrides {
        Name: "cs:UniqueStorageId"
        Int: 0
      }
      Overrides {
        Name: "cs:Client"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:Static"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:Server"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:ValidReplicatorIdentifiers"
        String: ""
      }
      Overrides {
        Name: "cs:ValidPlaceToolTypes"
        String: ""
      }
      Overrides {
        Name: "cs:ValidRemoveToolTypes"
        String: ""
      }
      Overrides {
        Name: "cs:PlaceEffects"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:RemoveEffects"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:PlaceEffectsOffset"
        Vector {
        }
      }
      Overrides {
        Name: "cs:RemoveEffectsOffset"
        Vector {
        }
      }
      Overrides {
        Name: "cs:RemoveItemWhenPlaced"
        Bool: true
      }
      Overrides {
        Name: "cs:PlacementPreview"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:PlacementOverlapCheckTrigger"
        AssetReference {
          Id: 2696669271632087297
        }
      }
      Overrides {
        Name: "cs:PlacementAreaTypes"
        String: ""
      }
      Overrides {
        Name: "cs:SnapToGrid"
        Bool: false
      }
      Overrides {
        Name: "cs:GridSize"
        Vector2 {
          X: 100
          Y: 100
        }
      }
      Overrides {
        Name: "cs:CanRotate"
        Bool: true
      }
      Overrides {
        Name: "cs:SnapRotation"
        Bool: false
      }
      Overrides {
        Name: "cs:RotationSnapAngle"
        Float: 45
      }
      Overrides {
        Name: "cs:RotateWithLook"
        Bool: false
      }
      Overrides {
        Name: "cs:DestroyOnRemove"
        Bool: false
      }
      Overrides {
        Name: "cs:DropInWorldOnRemove"
        Bool: true
      }
      Overrides {
        Name: "cs:DropPlacementCostsOnRemove"
        Bool: false
      }
      Overrides {
        Name: "cs:DropsForAllPlayers"
        Bool: false
      }
      Overrides {
        Name: "cs:DropItemPickupTemplate"
        AssetReference {
          Id: 8040246261067913342
        }
      }
      Overrides {
        Name: "cs:DropTimeoutSeconds"
        Float: 0
      }
      Overrides {
        Name: "cs:IsInventory"
        Bool: true
      }
      Overrides {
        Name: "cs:ValidOpenToolTypes"
        String: ""
      }
      Overrides {
        Name: "cs:OpenInventoryInteractionText"
        String: ""
      }
      Overrides {
        Name: "cs:AllowNonEmptyRemoval"
        Bool: false
      }
      Overrides {
        Name: "cs:DestroyContentsOnRemove"
        Bool: false
      }
      Overrides {
        Name: "cs:DropContentsInWorldOnRemove"
        Bool: false
      }
      Overrides {
        Name: "cs:Name:tooltip"
        String: ""
      }
      Overrides {
        Name: "cs:Name:category"
        String: ""
      }
      Overrides {
        Name: "cs:UniqueStorageId:tooltip"
        String: "This number is used when saving data to keep it small and to allow you to re-order your Database. It must be unique across all Placeables."
      }
      Overrides {
        Name: "cs:UniqueStorageId:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:Client:tooltip"
        String: "(Optional) If set, this template will be spawned into the Client context when this Placeable is in the world."
      }
      Overrides {
        Name: "cs:Client:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:Static:tooltip"
        String: "(Optional) If set, this template will be spawned into the Static context when this Placeable is in the world."
      }
      Overrides {
        Name: "cs:Static:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:Server:tooltip"
        String: "(Optional) If set, this template will be spawned into the Server context when this Placeable is in the world."
      }
      Overrides {
        Name: "cs:Server:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:ValidReplicatorIdentifiers:tooltip"
        String: "A comma separated list of Replicator Identifiers this can be placed into. This identifier is defined on the Player Lot Replicator Loader."
      }
      Overrides {
        Name: "cs:ValidReplicatorIdentifiers:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:ValidPlaceToolTypes:tooltip"
        String: "(Optional) A comma separated list of Tool Types or Item Ids that can be used to place this item. If left blank, any Tool that can place items could potentially place this one."
      }
      Overrides {
        Name: "cs:ValidPlaceToolTypes:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:ValidRemoveToolTypes:tooltip"
        String: "(Optional) A comma separated list of Tool Types or Item Ids that can be used to remove this item. If left blank, any Tool that can remove items could potentially remove this one."
      }
      Overrides {
        Name: "cs:ValidRemoveToolTypes:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:PlaceEffects:tooltip"
        String: "(Optional) If set, this template will be spawned when this is placed into the world. It is recommended to have a lifespan on this template. A default lifespan of 5 seconds will be used if it is set to 0."
      }
      Overrides {
        Name: "cs:PlaceEffects:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:PlaceEffects:subcategory"
        String: "VFX"
      }
      Overrides {
        Name: "cs:RemoveEffects:tooltip"
        String: "(Optional) If set, this template will be spawned when this is removed from the world. It is recommended to have a lifespan on this template. A default lifespan of 5 seconds will be used if it is set to 0."
      }
      Overrides {
        Name: "cs:RemoveEffects:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:RemoveEffects:subcategory"
        String: "VFX"
      }
      Overrides {
        Name: "cs:PlaceEffectsOffset:tooltip"
        String: "This will move where the \"PlaceEffects\" template spawns. It can be used to position the effect exactly where you need it."
      }
      Overrides {
        Name: "cs:PlaceEffectsOffset:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:PlaceEffectsOffset:subcategory"
        String: "VFX"
      }
      Overrides {
        Name: "cs:RemoveEffectsOffset:tooltip"
        String: "This will move where the \"RemoveEffects\" template spawns. It can be used to position the effect exactly where you need it."
      }
      Overrides {
        Name: "cs:RemoveEffectsOffset:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:RemoveEffectsOffset:subcategory"
        String: "VFX"
      }
      Overrides {
        Name: "cs:RemoveItemWhenPlaced:tooltip"
        String: "If true, the item will be removed from the Players Inventory when placed."
      }
      Overrides {
        Name: "cs:RemoveItemWhenPlaced:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:RemoveItemWhenPlaced:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:PlacementPreview:tooltip"
        String: "(Optional) if set, this template will be spawned to act as a preview of where the item will be placed in world."
      }
      Overrides {
        Name: "cs:PlacementPreview:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:PlacementPreview:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:PlacementOverlapCheckTrigger:tooltip"
        String: "(Optional) If set, this template will be spawned to act as an overlap checker when placing this object. Placement will not be allowed if it overlaps with anything marked as \"Can Overlap Triggers\". The template must include one or more Triggers to work."
      }
      Overrides {
        Name: "cs:PlacementOverlapCheckTrigger:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:PlacementOverlapCheckTrigger:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:PlacementAreaTypes:tooltip"
        String: "(Optional) If set, this comma separated list of Placement Area Types will restrict this item to only being allowed to be placed on matching Placement Areas. If blank, the item can be placed on any surface."
      }
      Overrides {
        Name: "cs:PlacementAreaTypes:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:PlacementAreaTypes:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:SnapToGrid:tooltip"
        String: "If true, the item will be constrained to a grid defined by the \"GridSize\" property."
      }
      Overrides {
        Name: "cs:SnapToGrid:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:SnapToGrid:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:GridSize:tooltip"
        String: "The dimensions of the grid that the item will snap to if \"SnapToGrid\" is true."
      }
      Overrides {
        Name: "cs:GridSize:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:GridSize:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:CanRotate:tooltip"
        String: "If true, the item can be rotated with the \"RotateCWBinding\", \"RotateCCWBinding\" and \"RotationSpeed\" that are set on the Tool or EquipmentData for the Tool the Player is using."
      }
      Overrides {
        Name: "cs:CanRotate:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:CanRotate:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:SnapRotation:tooltip"
        String: "If true, rotation will be snapped in increments of the angle set by \"RotationSnapAngle\"."
      }
      Overrides {
        Name: "cs:SnapRotation:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:SnapRotation:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:RotationSnapAngle:tooltip"
        String: "The angle increment to snap rotation of the item to if \"SnapRotation\" is true."
      }
      Overrides {
        Name: "cs:RotationSnapAngle:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:RotationSnapAngle:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:RotateWithLook:tooltip"
        String: "If true, the item will maintain its angle relative to the Player while being moved around before it is placed."
      }
      Overrides {
        Name: "cs:RotateWithLook:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:RotateWithLook:subcategory"
        String: "Placement"
      }
      Overrides {
        Name: "cs:DestroyOnRemove:tooltip"
        String: "If true, the item will be destroyed when removed and no drops will be given to the Player."
      }
      Overrides {
        Name: "cs:DestroyOnRemove:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:DestroyOnRemove:subcategory"
        String: "Removal"
      }
      Overrides {
        Name: "cs:DropInWorldOnRemove:tooltip"
        String: "If true, drops will appear in world as Item Pickups when the item is removed. Otherwise they will go into the Players Inventory."
      }
      Overrides {
        Name: "cs:DropInWorldOnRemove:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:DropInWorldOnRemove:subcategory"
        String: "Removal"
      }
      Overrides {
        Name: "cs:DropPlacementCostsOnRemove:tooltip"
        String: "If true, any Costs for placing this item will be dropped along with other Drops."
      }
      Overrides {
        Name: "cs:DropPlacementCostsOnRemove:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:DropPlacementCostsOnRemove:subcategory"
        String: "Removal"
      }
      Overrides {
        Name: "cs:DropsForAllPlayers:tooltip"
        String: "If true, Drops will drop on all clients if \"DropInWorldOnRemove\" is also true."
      }
      Overrides {
        Name: "cs:DropsForAllPlayers:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:DropsForAllPlayers:subcategory"
        String: "Removal"
      }
      Overrides {
        Name: "cs:DropItemPickupTemplate:tooltip"
        String: "If true, and if \"DropInWorldOnRemove\" is true, this Item Pickup template will be spawned in world to contain the drops."
      }
      Overrides {
        Name: "cs:DropItemPickupTemplate:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:DropItemPickupTemplate:subcategory"
        String: "Removal"
      }
      Overrides {
        Name: "cs:DropTimeoutSeconds:tooltip"
        String: "If \"DropInWorldOnRemove\" is true, the number of seconds the drop will exist in the world."
      }
      Overrides {
        Name: "cs:DropTimeoutSeconds:category"
        String: "Placeable"
      }
      Overrides {
        Name: "cs:DropTimeoutSeconds:subcategory"
        String: "Removal"
      }
      Overrides {
        Name: "cs:IsInventory:tooltip"
        String: "If true, this Placeable object will act as an Inventory Container."
      }
      Overrides {
        Name: "cs:IsInventory:category"
        String: "Inventory"
      }
      Overrides {
        Name: "cs:ValidOpenToolTypes:tooltip"
        String: "(Optional) A comma separated list of Tool Types or Item Ids that can be used to open this item. If left blank, any Tool that can place items could potentially open this one."
      }
      Overrides {
        Name: "cs:ValidOpenToolTypes:category"
        String: "Inventory"
      }
      Overrides {
        Name: "cs:DestroyContentsOnRemove:category"
        String: "Inventory"
      }
      Overrides {
        Name: "cs:AllowNonEmptyRemoval:category"
        String: "Inventory"
      }
      Overrides {
        Name: "cs:AllowNonEmptyRemoval:tooltip"
        String: "If true, this will allow Players to remove this Placeable Inventory if it contains items."
      }
      Overrides {
        Name: "cs:DestroyContentsOnRemove:tooltip"
        String: "If true, and \"AllowNonEmptyRemoval\" is also true, this will destroy the contents of the Inventory when it is removed."
      }
      Overrides {
        Name: "cs:DropContentsInWorldOnRemove:category"
        String: "Inventory"
      }
      Overrides {
        Name: "cs:DropContentsInWorldOnRemove:tooltip"
        String: "If true, and \"DestroyContentsOnRemove\" is false, this will drop the contents of the Inventory into the world, otherwise they will be added directly to the Players Inventory."
      }
      Overrides {
        Name: "cs:OpenInventoryInteractionText:category"
        String: "Inventory"
      }
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Data"
}
