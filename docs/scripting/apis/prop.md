<big><sub>**`CVR.Prop`**</sub></big>
# Prop API

Provides wrapped access to spawned props. The `CVRSpawnable` component is not currently bound.

For Prop related events please see [Available Events - Prop Events](available-events.md/#prop-events).

## Static Members

### Static Methods

| Signature             | Description                                                                                  |
|-----------------------|----------------------------------------------------------------------------------------------|
| Prop[] GetAllProps()  | Returns all props currently active in the instance                                           |
| Prop GetCurrentProp() | Returns the prop associated with the current WasmBehaviour's root, or null if outside a prop |

## Instance Members

### Instance Properties

| Signature                                                                          | Description                              |
|------------------------------------------------------------------------------------|------------------------------------------|
| [Player](player.md) Spawner                                                        | Returns the player who spawned this prop |
| [GameObject](https://docs.unity3d.com/ScriptReference/GameObject.html) RootObject  | The root GameObject of the spawned prop  |
| [Transform](https://docs.unity3d.com/ScriptReference/Transform.html) RootTransform | The root Transform of the spawned prop   |
| string ContentId                                                                   | The asset ID of the prop                 |

### Instance Methods

| Signature      | Description                                                                    |
|----------------|--------------------------------------------------------------------------------|
| void Destroy() | Destroys the prop; if called on the spawner's client, destroys it for everyone |

## Relevant Examples

- [Destroy Prop on Contact](../examples/destroy-prop-on-contact.md)