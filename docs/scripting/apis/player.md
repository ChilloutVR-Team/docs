<big><sub>**`CVR.Player`**</sub></big>
# Player API

The **Player API** provides wrapped access to players currently in the instance. This includes the local player.

The local player also had a dedicated API for things specific to the local client, like Teleport and SetPosition: [LocalPlayer API](local-player.md).

For Player related events please see [Available Events - Player Events](available-events.md/#player-events).

## Static Members

### Static Methods

| Signature                    | Description                                 |
|------------------------------|---------------------------------------------|
| Player[] GetAllPlayers();    | Returns all players in the instance         |
| Player[] GetRemotePlayers(); | Returns only remote players in the instance |

## Instance Members

### Instance Properties

| Signature                                                                                  | Description                          |
|:-------------------------------------------------------------------------------------------|--------------------------------------|
| string UserId \{ get; \}                                                                   | Unique user identifier               |
| string Username \{ get; \}                                                                 | Display name                         |
| short NetworkId \{ get; \}                                                                 | Short network identifier             |
| [GameObject](https://docs.unity3d.com/ScriptReference/GameObject.html) GameObject { get; } | Root game object representing player |
| ViewPoint ViewPoint \{ get; \}                                                             | Wrapped viewpoint                    |
| VoicePoint VoicePoint \{ get; \}                                                           | Wrapped voicepoint                   |

### Instance Methods

| Signature                                                                      | Description                          |
|--------------------------------------------------------------------------------|--------------------------------------|
| float GetInitialHeight();                                                      | Returns the player's initial height  |
| float GetCurrentHeight();                                                      | Returns the player's current height  |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetGravity(); | Returns the gravity vector           |
| Prop[] GetSpawnedProps();                                                      | Returns props spawned by this player |