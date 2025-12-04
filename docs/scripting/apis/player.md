# Player API

The **Player API** provides wrapped access to players currently in the instance. This includes the local player.

The local player also had a dedicated API for things specific to the local client, like Teleport and SetPosition: [LocalPlayer API](local-player.md).

For Player related events please see [Available Events - Player Events](available-events.md/#player-events).

## Player
<big><sub>**`CVR.Player`**</sub></big>

### Static Members

#### Static Methods

| Signature                    | Description                                 |
|------------------------------|---------------------------------------------|
| Player[] GetAllPlayers();    | Returns all players in the instance         |
| Player[] GetRemotePlayers(); | Returns only remote players in the instance |

### Instance Members

#### Instance Properties

| Signature                                                                                    | Description                          |
|:---------------------------------------------------------------------------------------------|--------------------------------------|
| string UserId \{ get; \}                                                                     | Unique user identifier               |
| string Username \{ get; \}                                                                   | Display name                         |
| short NetworkId \{ get; \}                                                                   | Short network identifier             |
| [GameObject](https://docs.unity3d.com/ScriptReference/GameObject.html) GameObject \{ get; \} | Root game object representing player |
| [AvatarPoint](#AvatarPoint) ViewPoint \{ get; \}                                             | Wrapped viewpoint                    |
| [AvatarPoint](#AvatarPoint) VoicePoint \{ get; \}                                            | Wrapped voicepoint                   |

#### Instance Methods

| Signature                                                                      | Description                          |
|--------------------------------------------------------------------------------|--------------------------------------|
| float GetInitialHeight();                                                      | Returns the player's initial height  |
| float GetCurrentHeight();                                                      | Returns the player's current height  |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetGravity(); | Returns the gravity vector           |
| Prop[] GetSpawnedProps();                                                      | Returns props spawned by this player |

## AvatarPoint
<big><sub>**`CVR.AvatarPoint`**</sub></big>

Provides wrapped access to specific avatar points and their transforms.
All methods retrieve transform data directly from the underlying native avatar point.

Despite avatar points being under the avatar's hierarchy, they are considered internal CVR objects by the [Permission System](../getting-started/context-and-permissions.md).

### Instance Members

#### Instance Methods

| Signature                                                                                          | Description                                                                |
|----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| [Transform](https://docs.unity3d.com/ScriptReference/Transform.html) GetPointTransform();          | Returns the world-space transform for this point                           |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetPointPosition();               | Returns the world-space position of the point                              |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetLocalPointPosition();          | Returns the local-space position relative to the avatar                    |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetRelativePointPosition();       | Returns the relative-space position (avatar-relative with scaling applied) |
| [Quaternion](https://docs.unity3d.com/ScriptReference/Quaternion.html) GetPointRotation();         | Returns the world-space rotation                                           |
| [Quaternion](https://docs.unity3d.com/ScriptReference/Quaternion.html) GetLocalPointRotation();    | Returns the local rotation relative to the avatar                          |
| [Quaternion](https://docs.unity3d.com/ScriptReference/Quaternion.html) GetRelativePointRotation(); | Returns the relative-space rotation                                        |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetPointForward();                | Returns the world-space forward direction                                  |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetPointRight();                  | Returns the world-space right direction                                    |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetPointUp();                     | Returns the world-space up direction                                       |
