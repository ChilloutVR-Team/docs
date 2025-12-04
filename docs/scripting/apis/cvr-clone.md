# CVR Clone API

Allows for creating and managing **visual** clones of Avatars, Props, or World objects.

These clones mirror the appearance and transform of the source object renderers. 
You can use them for gimmicks like fake mirrors, clones through portals, or other shenanigans.

Using this system you have full control over the clone's position, rotation, and scale, independent of the source object.

!!! info
    Only **Worlds** may use the Clone API. Avatars and Props cannot use the Clone API due to it's expensive nature.

## CVRClone
<big><sub>**`CVR.Clone`**</sub></big>

### Static Members

#### Static Methods

| Signature                                                                    | Description                                                                |
| ---------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| CVRClone CreateClone(GameObject gameObject, CloneOptions options = default); | Creates a clone of the given `GameObject` with optional cloning parameters |

### Instance Members

#### Instance Methods

| Signature                   | Description                                                 |
| --------------------------- | ----------------------------------------------------------- |
| GameObject GetSourceRoot(); | Returns the original source object used to create the clone |
| GameObject GetCloneRoot();  | Returns the root `GameObject` of the created clone          |
| void Destroy();             | Destroys the clone and frees associated resources           |

## CloneOptions Struct
<big><sub>**`CVR.CloneOptions`**</sub></big>

Configuration options used when creating a clone with `CVR.Clone`.
Controls transform syncing, material syncing, layer overrides, and render-visibility behavior.

### Fields

| Field                                | Description                                                                           |
| ------------------------------------ | ------------------------------------------------------------------------------------- |
| bool SyncTransforms                  | Syncs transforms from source to clone (relative to root)                              |
| bool SyncRootPosition                | Syncs the clone root position from the source                                         |
| bool SyncMaterialSwaps               | Syncs material swap changes from source to clone                                      |
| bool OverrideLayers                  | If true, all cloned objects use `CloneLayer`; otherwise original layers are preserved |
| int CloneLayer                       | Layer assigned to cloned objects when `OverrideLayers` is true                        |
| bool OnlyRenderIfOriginalNotInCamera | Cloned renderer becomes visible only when the original is not in the rendering camera |

### Static Presets

#### ExtensionOfPlayer
<big><sub>**`CVR.CloneOptions.ExtensionOfPlayer`**</sub></big>

Suitable for player-attached extensions. This is used for the native "Show Attached Props in Self Mirrors" feature.

| Field                           | Value                   |
| ------------------------------- | ----------------------- |
| SyncTransforms                  | true                    |
| SyncRootPosition                | true                    |
| SyncMaterialSwaps               | true                    |
| OverrideLayers                  | true                    |
| CloneLayer                      | `CVRLayers.PlayerLocal` |
| OnlyRenderIfOriginalNotInCamera | true                    |
