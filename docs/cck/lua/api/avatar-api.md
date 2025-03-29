# AvatarAPI

Accessible via the `AvatarAPI` [Global](globals.md#api-access). This API provides access to the Local [Avatar](#avatar)

There are some events for avatars, they can be checked here: [Avatar Events](events.md#avatar-events)

## Static Properties

| Name                                                     | Description                                                                                                                     |
|----------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| `LocalAvatar : Avatar` <br>(Returns [Avatar](#avatar))   | Access the Local Player's Avatar instance reference                                                                             |
| `CurrentAvatar : Avatar` <br>(Returns [Avatar](#avatar)) | Access the Script's Avatar instance reference (the avatar the script is running on). *This is only available on avatar scripts* |

## Avatar

The `Avatar` instances can be accessed via:

- The `AvatarAPI.LocalAvatar` [Global](globals.md#api-access)
- The player instance ([Player](player-api.md#player)). It has a property named `Avatar`

### Properties

| Property                                                       | Description                                                               |
|----------------------------------------------------------------|---------------------------------------------------------------------------|
| `AvatarID : string`                                            | Unique identifier for the avatar. Retrieves the avatar's asset object ID. |
| `Wearer : Player` <br>(Returns [Player](player-api.md#player)) | Reference to the avatar's wearer Player's [Player](player-api.md)         |
| `IsLoaded : bool`                                              | Returns whether an avatar is loaded or not.                               |
| `IsHuman : bool`                                               | Checks if the animator's avatar is humanoid.                              |

### Methods

| Method                       | Description                                                                                     |
|------------------------------|-------------------------------------------------------------------------------------------------|
| `GetHeight() : float`        | Returns the height of the avatar.<br/>Returns the viewpoint height if the avatar is not loaded. |
| `GetInitialHeight() : float` | Returns the initial height of the avatar.<br/>Defaults to 1.6m if no avatar is loaded.          |

### Avatar Bones

| Method                                                                       | Description                                                                                                    |
|------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| `HasBone(HumanBodyBones humanBone) : bool`                                   | Checks if the specified human body bone is present in the avatar.                                              |
| `GetBonePosition(HumanBodyBones humanBone) : Vector3`                        | Gets the world position (Vector3) of a specified bone. Returns nil if missing.                                 |
| `GetBoneRotation(HumanBodyBones humanBone) : Quaternion`                     | Gets the world rotation (Quaternion) of a specified bone. Returns nil if missing.                              |
| `GetBonePositionAndRotation(HumanBodyBones humanBone) : Vector3, Quaternion` | Gets the world position and rotation (Tuple(Vector3, Quaternion)) of a specified bone. Returns nil if missing. |

### Animator Parameters

| Method                                                                     | Description                                                                                                    |
|----------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| `HasParameter(string parameterName) : bool`                                | Checks if the specified parameter exists in the avatar's animator.                                             |
| `GetParameterAsBool(string parameterName) : bool`                          | Retrieves a boolean parameter from the animator. Returns nil if the parameter does not exist.                  |
| `GetParameterAsInt(string parameterName) : int`                            | Retrieves an integer parameter from the animator. Returns nil if the parameter does not exist.                 |
| `GetParameterAsFloat(string parameterName) : float`                        | Retrieves a float parameter from the animator. Returns nil if the parameter does not exist.                    |
| `SetParameter(string parameterName, bool/float/int parameterValue) : void` | Sets an animator parameter to a set value.<br/>Internally will cast to the type actually used by the Animator. |

### Avatar Picture

Requesting the picture is a bit more complicated as it needs to be acquired in the first place. So it's not a function
that will give the results right away. Instead, it uses a callback lua function, which is basically a normal lua
function that gets called whenever the request is finished.

For a complete example, check: [Player Profile and Avatar Picture Example](../examples/player-profile-picture.md)

#### Methods

| Name                                                                                                                                                                                                                          | Description                                                                          |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| `RequestImage(callback OnAvatarImage, bool castToTexture) : void`<br>&nbsp;&nbsp;- `#arg1` lua function for the [callback](#callbacks)<br>&nbsp;&nbsp;- `#arg2` *[Optional]* Whether to cast the Texture2D to Texture or not. | Sends a request to fetch the Player Avatar's picture as a Texture2D or as a Texture. |

#### Callbacks

| Name                                                                                                                                                                                                                          | Description                                                         |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `OnAvatarImage(Texture2D/Texture texture, string avatarID) : void`<br>&nbsp;&nbsp;- `#arg1` The Texture/Texture2D reference for the avatar's image<br>&nbsp;&nbsp;- `#arg2` *[Optional]* The Avatar's ID the image belongs to | Gets called when `RequestImage` finished and is sending the results |
