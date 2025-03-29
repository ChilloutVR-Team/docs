# SpawnableAPI

Accessible via the `SpawnableAPI` [Global](globals.md#api-access). This API provides access to the Local [Spawnable](#Spawnable)

There are some events for spawnables, they can be checked here: [Spawnable Events](events.md#spawnable-events)

## Static Properties

| Name                                                                             | Description                                                            |
|----------------------------------------------------------------------------------|------------------------------------------------------------------------|
| `AllSpawnables : List<Spawnable>` <br>(Returns List<[Spawnable](#Spawnable)>)    | Access the List containing all spawnable instances.                    |
| `MySpawnables : List<Spawnable>` <br>(Returns List<[Spawnable](#Spawnable)>)     | Access the List containing the spawnables spawned by the local player. |
| `OthersSpawnables : List<Spawnable>` <br>(Returns List<[Spawnable](#Spawnable)>) | Access the List containing the spawnables spawned by remotes players.  |

## Spawnable

The `Spawnable` instances can be accessed via:

- The `SpawnableAPI` [Global](globals.md#api-access)
- The player instance ([Player](player-api.md)). It has a property named `Spawnables`

### Properties

| Property                                                        | Description                                                                                                                 |
|-----------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| `SpawnableID : string`                                          | Unique identifier for the Spawnable.                                                                                        |
| `SpawnableInstanceID : string`                                  | Unique instance identifier for the Spawnable. If there are multiple props with the same guid, this will differentiate them. |
| `IsSpawnedByMe : bool`                                          | Returns whether the prop was spawned by the local player or not.                                                            |
| `Spawner : Player` <br>(Returns [Player](player-api.md#player)) | Reference to the Spawnable's spawner [Player](player-api.md#player) entry                                                   |
| `RootGameObject : GameObject`                                   | Spawnable root gameObject.                                                                                                  |
| `RootTransform : Transform`                                     | Spawnable root transform.                                                                                                   |

### Spawnable Picture

Requesting the picture is a bit more complicated as it needs to be acquired in the first place. So it's not a function
that will give the results right away. Instead, it uses a callback lua function, which is basically a normal lua
function that gets called whenever the request is finished.

For a complete example, check the avatar (the spawnable is pretty much the same, just changing the method called)
picture: [Player Profile and Avatar Picture Example](../examples/player-profile-picture.md)

#### Methods

| Name                                                                                                                                                                                                                             | Description                                                                             |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| `RequestImage(callback OnSpawnableImage, bool castToTexture) : void`<br>&nbsp;&nbsp;- `#arg1` lua function for the [callback](#callbacks)<br>&nbsp;&nbsp;- `#arg2` *[Optional]* Whether to cast the Texture2D to Texture or not. | Sends a request to fetch the Player Spawnable's picture as a Texture2D or as a Texture. |

#### Callbacks

| Name                                                                                                                                                                                                                                      | Description                                                         |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `OnSpawnableImage(Texture2D/Texture texture, string SpawnableID) : void`<br>&nbsp;&nbsp;- `#arg1` The Texture/Texture2D reference for the Spawnable's image<br>&nbsp;&nbsp;- `#arg2` *[Optional]* The Spawnable's ID the image belongs to | Gets called when `RequestImage` finished and is sending the results |
