# PlayerAPI

Accessible via the `PlayerAPI` [Global](globals.md#api-access). This API provides access to all players in the world, including the
local player.

## Static Functions

| Name                                                                    | Description                                                    |
|-------------------------------------------------------------------------|----------------------------------------------------------------|
| `FindPlayerByUsername(string username)` <br>(Returns [Player](#player)) | Returns player entity by username.                             |
| `FindPlayerByUserId(string userId)` <br>(Returns [Player](#player))     | Returns player entity by user id.                              |
| `IsFriendsWith(string userId)` <br>(Returns `bool`)                     | Returns whether we're friends with the userId provided or not. |

## Static Properties

| Name                                                                     | Description                                                       |
|--------------------------------------------------------------------------|-------------------------------------------------------------------|
| `LocalPlayer : Player` <br>(Returns [Player](#player))                   | Access to Teleport, AddForce, etc.                                |
| `AllPlayers : List<Player>` <br>(Returns [Player](#player))              | List of all Player entities (includes the local player).          |
| `RemotePlayers : List<Player>` <br>(Returns a list of [Player](#player)) | List of all *Remote* Player entities (excludes the local player). |
| `PlayerCount : int`                                                      | Total connected player count. This includes the local player.     |

## Player

Entity that represents a Player, these Functions and Properties accessible from both local and remote player.

### Properties

| Name                                                                                       | Description                            |
|--------------------------------------------------------------------------------------------|----------------------------------------|
| `IsLocal : bool`                                                                           | Indicates if this is the local player. |
| `IsRemote : bool`                                                                          | Indicates if this is a remote player.  |
| `Username : string`                                                                        | Username of the player.                |
| `UserID : string`                                                                          | Unique identifier for the player.      |
| `Avatar : Avatar` <br>(Returns [Avatar](avatar-api.md#avatar))                             | Get the player's Avatar Instance.      |
| `Spawnables : List<Spawnable>` <br>(Returns List<[Spawnable](spawnable-api.md#spawnable)>) | Get the player's spawned spawnables.   |

### Core Parameters

These parameters are set by ChilloutVR to drive the player's avatar animations. They may not be representative of the
actual player's input in some situations.

| Name                    | Description                                                                                                       |
|-------------------------|-------------------------------------------------------------------------------------------------------------------|
| `Core.MovementX`        | Horizontal movement input value.<br/>Ranges from -1.0 to 1.0.                                                     |
| `Core.MovementY`        | Vertical movement input value.<br/>Ranges from -1.0 to 1.0.                                                       |
| `Core.GestureLeft`*     | Current gesture state of the left hand.<br/>Ranges from -1.0 to 6.0 with 0.0 to 1.0 as fist weight.               |
| `Core.GestureLeftIdx`*  | Current gesture without the analog fist weight.                                                                   |
| `Core.GestureRight`*    | Current gesture state of the right hand.<br/>Ranges from -1.0 to 6.0 with 0.0 to 1.0 as fist weight.              |
| `Core.GestureRightIdx`* | Current gesture without the analog fist weight.                                                                   |
| `Core.Crouching`        | Indicates if the player is crouching.                                                                             |
| `Core.Prone`            | Indicates if the player is prone.                                                                                 |
| `Core.Flying`           | Indicates if the player is flying.                                                                                |
| `Core.Sitting`          | Indicates if the player is sitting.                                                                               |
| `Core.Swimming`         | Indicates if the player is swimming.                                                                              |
| `Core.Grounded`         | Indicates if the player is on the ground.                                                                         |
| `Core.Toggle`           | Currently selected toggle state.<br/>Ranges from 0 to 8.                                                          |
| `Core.Emote`            | Target emote for the player to play.<br/>Ranges from 0 to 8 and returns to 0 within 0.1s of being set.            |
| `Core.CancelEmote`      | Trigger to cancel the current emote.<br/>True when in a state where an emote should not play.                     |
| `Core.VisemeIdx`**      | Index value representing the current viseme.<br/>Ranges from 0 to 14.                                             |
| `Core.VisemeLoudness`   | Loudness level for the current viseme.<br/>Ranges from 0.0 to 1.0.                                                |
| `Core.DistanceTo`       | Distance to the local player in meters.<br/>Always 0.0 for the local player. Defaults to -1.0 until first update. |

#### Gesture Values *

The gesture values are mapped as follows:

- `-1`: Open
- `0`: Idle
- `1`: Fist
- `2`: Thumbs Up
- `3`: Handgun
- `4`: Finger Point
- `5`: Peace
- `6`: RockNRoll

#### Viseme Index Values **

The viseme index values are mapped as follows:

- `0`: Sil
- `1`: PP
- `2`: FF
- `3`: TH
- `4`: DD
- `5`: KK
- `6`: CH
- `7`: SS
- `8`: NN
- `9`: RR
- `10`: AA
- `11`: E
- `12`: I
- `13`: O
- `14`: U

### Position and Orientation

| Name                         | Description                                    |
|------------------------------|------------------------------------------------|
| `GetPosition() : Vector3`    | Current position of the player in world space. |
| `GetRotation() : Quaternion` | Current rotation of the player in world space. |
| `GetForward(): Vector3`      | The forward direction vector of the player.    |

### View and Voice Points

| Name                                   | Description                               |
|----------------------------------------|-------------------------------------------|
| `GetViewPointPosition() : Vector3`     | Position of the viewpoint in the world.   |
| `GetViewPointRotation() : Quaternion`  | Rotation of the viewpoint in the world.   |
| `GetVoicePointPosition() : Vector3`    | Position of the voice point in the world. |
| `GetVoicePointRotation() : Quaternion` | Rotation of the voice point in the world. |

### Gravity

| Name                              | Description                                    |
|-----------------------------------|------------------------------------------------|
| `GetGravity() : Vector3`          | Current gravity vector affecting the player.   |
| `GetGravityDirection() : Vector3` | Direction of the gravity affecting the player. |

### Profile Picture

Requesting the picture is a bit more complicated as it needs to be acquired in the first place. So it's not a function
that will give the results right away. Instead, it uses a callback lua function, which is basically a normal lua
function that gets called whenever the request is finished.

For a complete example, check: [Player Profile and Avatar Picture Example](../examples/player-profile-picture.md)

#### Methods

| Name                                                                                                                                                                                                                                  | Description                                                                           |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| `RequestProfileImage(callback OnProfileImage, bool castToTexture) : void`<br>&nbsp;&nbsp;- `#arg1` lua function for the [callback](#callbacks)<br>&nbsp;&nbsp;- `#arg2` *[Optional]* Whether to cast the Texture2D to Texture or not. | Sends a request to fetch the Player's profile picture as a Texture2D or as a Texture. |

#### Callbacks

| Name                                                                                                                                                                                                                           | Description                                                                |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| `OnProfileImage(Texture2D/Texture texture, string userID) : void`<br>&nbsp;&nbsp;- `#arg1` The Texture/Texture2D reference for the player image<br>&nbsp;&nbsp;- `#arg2` *[Optional]* The Player's UserID the image belongs to | Gets called when `RequestProfileImage` finished and is sending the results |

## Remote Player

Functions and properties specific to remote players.

### Properties

| Name                       | Description                                       |
|----------------------------|---------------------------------------------------|
| `IsNameplateActive : bool` | Indicates whether the nameplate is active or not. |

### Methods

| Name                               | Description                                                     |
|------------------------------------|-----------------------------------------------------------------|
| `GetNameplatePosition() : Vector3` | Get the Position of the remote player's nameplate in the world. |

## Local Player

Functions and properties specific to the local player.

### Properties

| Name                        | Description                                                                                          |
|-----------------------------|------------------------------------------------------------------------------------------------------|
| `IsAuthenticated : bool`    | Indicates whether the Player is authenticated or not.                                                |
| `IsUsingVR : bool`          | Indicates whether the Player is using VR or not.                                                     |
| `ImmersionDepth : bool`     | How deeply the Player is immersed in water. <br> Ranges from 0 (not immersed) to 1 (fully immersed). |
| `IsImmobilized : bool`      | Indicates whether the Player is immobilized or not.                                                  |
| `IsFlying : bool`           | Indicates whether the Player is flying or not or not.                                                |
| `IsFlyingWithNoClip : bool` | Indicates whether the Player is flying with no clip mode enabled or not.                             |
| `IsFlightAllowed : bool`    | Indicates whether flying is allowed in the current world or not.                                     |

### Methods

| Name                         | Description                                                                                |
|------------------------------|--------------------------------------------------------------------------------------------|
| `GetHeadingOffset() : float` | Get the The angle between the player's playspace forward and the player's current forward. |

### PlaySpace

| Name                             | Description                                                                    |
|----------------------------------|--------------------------------------------------------------------------------|
| `GetPlaySpaceScale() : float`    | The ratio of the player's avatar height to the player's irl height.            |
| `GetPlaySpaceOffset() : Vector3` | The local offset from the player's PlaySpace center to their current position. |

### Movement

| Name                                                                                                          | Description                                                                                 |
|---------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| `Respawn() : void`                                                                                            | Respawns the player.                                                                        |
| `SetFlight(bool flightEnable, bool noClipEnabled) : void`                                                     | Sets flight and no clip modes for the player.                                               |
| `SetImmobilized(bool isImmobilized) : void`                                                                   | Sets the immobilization status of the player.                                               |
| `AddForce(Vector3 force, ForceMode forceMode) : void`                                                         | Applies a force to the player.                                                              |
| `LaunchCharacter(Vector3 launchVelocity, bool overrideVerticalVelocity, bool overrideLateralVelocity) : void` | Launches the player with a specific velocity.                                               |
| `ResetAllForces() : void`                                                                                     | Resets all forces currently applied to the player.                                          |
| `PauseGroundConstraint() : void`                                                                              | Temporarily disables ground constraints, allowing the player to freely move off the ground. |
| `GetControllerVelocity() : Vector3 : void`                                                                    | Gets the current Player Controller velocity.                                                |
| `SetControllerVelocity(Vector3) : void`                                                                       | Sets the current Player Controller velocity.                                                |

**Note:** These functions can only be called by worlds, avatars when `WornByMe` is true, and props when `SpawnedByMe` is
true.

### Position and Orientation

| Name                                | Description                                                                                                                                                                                      |
|-------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `SetPosition(Vector3 targetPos)`    | Set current position of the player in world space without interpolation, nor grounding the player, nor preserving velocity. For more versatility use the [Teleportation methods](#teleportation) |
| `SetRotation(Quaternion targetRot)` | Set current rotation of the player in world space without interpolation, nor grounding the player, nor preserving velocity. For more versatility use the [Teleportation methods](#teleportation) |

**Note:** These functions can only be called by worlds, avatars when `WornByMe` is true, and props when `SpawnedByMe` is
true.

### Teleportation

| Name                                                                                                                              | Description                                                                     |
|-----------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| `TeleportPlayerTo(Vector3 targetPos, bool interpolate, bool updateGround, bool preserveVelocity, Quaternion? rotationDifference)` | Teleports the player to a specified position with optional rotation difference. |
| `TeleportPlayerTo(Vector3 targetPos, Vector3 targetEulerRot, bool interpolate, bool updateGround, bool preserveVelocity)`         | Teleports the player to a specified position and rotation.                      |
| `TeleportPlayerTo(Vector3 targetPos, Quaternion targetRot, bool interpolate, bool updateGround, bool preserveVelocity)`           | Teleports the player to a specified position and rotation.                      |
| `TeleportPlayerTo(Transform targetTransform, bool interpolate, bool updateGround, bool preserveVelocity)`                         | Teleports the player to a specified transform, orienting the player with it.    |

**Note:** These functions can only be called by worlds, avatars when `WornByMe` is true, and props when `SpawnedByMe` is
true.

### Avatar Management

| Name                            | Description                                                                         |
|---------------------------------|-------------------------------------------------------------------------------------|
| `SwitchAvatar(string avatarId)` | Switches the player's avatar. <br>Limited to once every 3 seconds (global timeout). |

**Note:** These functions can only be called by worlds, avatars when `WornByMe` is true, and props when `SpawnedByMe` is
true.

### IK Control

#### Properties

| Name                               | Description                                                                    |
|------------------------------------|--------------------------------------------------------------------------------|
| `IKLeftWristToPalmAxis : Vector3`  | Local axis of the left hand bone that points from the wrist towards the palm.  |
| `IKLeftPalmToThumbAxis : Vector3`  | Local axis of the left hand bone that points from the palm towards the thumb.  |
| `IKRightWristToPalmAxis : Vector3` | Local axis of the right hand bone that points from the wrist towards the palm. |
| `IKRightPalmToThumbAxis : Vector3` | Local axis of the right hand bone that points from the palm towards the thumb. |

#### Methods

| Name                                                 | Description                                                  |
|------------------------------------------------------|--------------------------------------------------------------|
| `SetBodyControlHeadWeight(weightValue) : void`       | [ 0.0 ; 1.0 ] Sets the Player's BodySystem Head weight       |
| `SetBodyControlPelvisWeight(weightValue) : void`     | [ 0.0 ; 1.0 ] Sets the Player's BodySystem Pelvis weight     |
| `SetBodyControlLeftArmWeight(weightValue) : void`    | [ 0.0 ; 1.0 ] Sets the Player's BodySystem LeftArm weight    |
| `SetBodyControlRightArmWeight(weightValue) : void`   | [ 0.0 ; 1.0 ] Sets the Player's BodySystem RightArm weight   |
| `SetBodyControlLeftLegWeight(weightValue) : void`    | [ 0.0 ; 1.0 ] Sets the Player's BodySystem LeftLeg weight    |
| `SetBodyControlRightLegWeight(weightValue) : void`   | [ 0.0 ; 1.0 ] Sets the Player's BodySystem RightLeg weight   |
| `SetBodyControlLocomotionWeight(weightValue) : void` | [ 0.0 ; 1.0 ] Sets the Player's BodySystem Locomotion weight |

**Note:** These functions can only be called by worlds, avatars when `WornByMe` is true, and props when `SpawnedByMe` is
true.