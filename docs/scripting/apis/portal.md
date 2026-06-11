<big><sub>**`CVR.Portal`**</sub></big>
# Portal API

Provides wrapped access to active portals.

For portal-related events, see [Available Events - Portal Events](available-events.md/#portal-events).

## Instance Members

### Instance Properties

| Signature                                                                          | Description                                                                                                         |
| ---------------------------------------------------------------------------------- |---------------------------------------------------------------------------------------------------------------------|
| [Player](player.md) Spawner                                                        | Returns the player who created this portal.\nThis can be null if the portal is created by the Game Server or World. |
| [GameObject](https://docs.unity3d.com/ScriptReference/GameObject.html) RootObject  | The root GameObject of the portal                                                                                   |
| [Transform](https://docs.unity3d.com/ScriptReference/Transform.html) RootTransform | The root Transform of the portal                                                                                    |

### Instance Methods

| Signature                                                                              | Description                          |
|----------------------------------------------------------------------------------------| ------------------------------------ |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetPosition()         | Returns the world position of portal |
| [Quaternion](https://docs.unity3d.com/ScriptReference/Quaternion.html) GetRotation()      | Returns the world rotation of portal |
| void SetPosition([Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) pos) | Sets the world position of portal    |
| void SetRotation([Quaternion](https://docs.unity3d.com/ScriptReference/Quaternion.html) rot)                                                       | Sets the world rotation of portal    |

## Relevant Examples

- [Dropped Portals Follow Spawner](../examples/dropped-portals-follow-spawner.md)