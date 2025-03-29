# Globals

Here you have properties and functions available to every script.

## Modules

Some bindings are provided by dedicated modules. You can access these modules by requiring them in your script.

| Function              | Description                                   |
|-----------------------|-----------------------------------------------|
| `require(moduleName)` | Adding modules to be available to Lua script. |

### Available Modules

- `System`
- `UnityEngine`
- `UnityEngine.AI`
- `UnityEngine.UI`
- `CVR`
- `CVR.Network`
- `CVR.CCK`
- `TextMeshPro`
- `RCC`

### Example

```lua
-- Top of your script
UnityEngine = require("UnityEngine") -- Access to UnityEngine bindings
CCK = require("CVR.CCK") -- Access to CCK component bindings

-- Usage in script
local coolVector = UnityEngine.NewVector3(1, 2, 3)
```

## Special Functions

| Function                 | Description                                                                                                                                                                                                                                                  |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `IsValid(object) : bool` | Determines whether a given System object, Unity Object, or API Object (Like [Player](./player-api.md#player) or [Avatar](./avatar-api.md#avatar)) is `null` or not. <br>It uses Unity's specific null check for Unity Objects to ensure accurate validation. |

## MonoBehaviour

| Property     | Description                             |
|--------------|-----------------------------------------|
| `name`       | Access to the attached gameObject name. |
| `gameObject` | Access to the attached gameObject.      |
| `transform`  | Access to the attached transform.       |

Most MonoBehaviour [Events](events.md) are also available.

## LuaBehaviour

| Property                     | Description                                                                         |
|------------------------------|-------------------------------------------------------------------------------------|
| `Hash`                       | SHA512 hash of script text as Base64 string.                                        |
| `RunningOnServer`            | True when running on server.                                                        |
| `RunningOnClient`            | True when running on client.                                                        |
| `RunningInAvatar`            | True when running on an avatar.                                                     |
| `RunningInProp`              | True when running on a prop.                                                        |
| `RunningInWorld`             | True when running in a world.                                                       |
| `IsWornByMe`                 | Defined when running on an Avatar. True for the avatar wearer. False for others.    |
| `IsSpawnedByMe`              | Defined when running on a Prop. True for the spawner. False for others.             |
| `BoundObjects`               | Access to the Bound Objects assigned on the CVRLuaClientBehaviour script in editor. |
| [`Script`](lua-behaviour.md) | Reference to the currently running script. **Example:** Script.Destroy("boom")      |
| [`Storage`](storage.md)      | Access to the local data persistence system.                                        |

## API Access

| API                              | Description                 | Example                                           |
|----------------------------------|-----------------------------|---------------------------------------------------|
| [PlayerAPI](player-api.md)       | Access to the PlayerAPI.    | **Example:** `PlayerAPI.LocalPlayer.Respawn()`    |
| [InstancesAPI](instances-api.md) | Access to the InstancesAPI. | **Example:** `print(InstancesAPI.Ping)`           |
| [AvatarAPI](avatar-api.md)       | Access to the AvatarAPI.    | **Example:** `print(AvatarAPI.LocalAvatar)`       |
| [SpawnableAPI](spawnable-api.md) | Access to the SpawnableAPI. | **Example:** `print(#SpawnableAPI.AllSpawnables)` |
| [WorldAPI](world-api.md)         | Access to the WorldAPI.     | **Example:** `print(WorldAPI.WorldID)`            |