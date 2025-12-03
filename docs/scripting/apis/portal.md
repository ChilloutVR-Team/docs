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

## Example

```csharp
/// Simple script that keeps portals within 2 meters of the player that spawned them
public partial class PortalFollower : WasmBehaviour
{
    private readonly List<Portal> _spawnedPortals = new();
    
    private void OnPortalCreated(Portal portal) => _spawnedPortals.Add(portal);
    private void OnPortalDestroyed(Portal portal) => _spawnedPortals.Remove(portal);

    private void Update()
    {
        foreach (Portal portal in _spawnedPortals)
        {
            Player dropper = portal?.Spawner;
            if (dropper == null) continue;
            
            Vector3 portalPos = portal.GetPosition();
            Vector3 dropperPos = dropper.GameObject.transform.position;
            if (Vector3.Distance(portalPos, dropperPos) > 2f)
            {
                Vector3 direction = (portalPos - dropperPos).normalized;
                portal.SetPosition(dropperPos + direction * 2f);
            }
        }
    }
}
```