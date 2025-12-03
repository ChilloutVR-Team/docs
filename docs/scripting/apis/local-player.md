<big><sub>**`CVR.LocalPlayer`**</sub></big>
# LocalPlayer API

Unlike the general [Player API](player.md), the LocalPlayer API provides wrapped access to functions specific to the local player.

For Player related events please see [Available Events - Player Events](available-events.md/#player-events).

## Static Members

### Static Properties

| Signature                      | Description                                    |
|--------------------------------|------------------------------------------------|
| [Player](player.md) PlayerObject \{ get; \} | Returns the player object for the local player |

### Static Methods

| Signature                                                                                   | Description                                |
|---------------------------------------------------------------------------------------------|--------------------------------------------|
| float GetPlaySpaceScale();                                                                  | Returns the current playspace scale factor |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetPlaySpaceOffset();      | Returns the current playspace offset       |
| [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) GetPosition();             | Returns the local player's world position  |
| void SetPosition([Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) p);       | Sets the local player's world position     |
| [Quaternion](https://docs.unity3d.com/ScriptReference/Quaternion.html) GetRotation();       | Returns the local player's world rotation  |
| void SetRotation([Quaternion](https://docs.unity3d.com/ScriptReference/Quaternion.html) r); | Sets the local player's world rotation     |
| void OffsetBy([Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) p);          | Offsets the local player by a position     |
| void MoveTo([Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html) p);            | Smoothly moves the local player to target  |
| void SetImmobilized(bool v);                                                                | Locks or unlocks movement                  |