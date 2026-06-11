# Example: Dropped Portals Follow Spawner

This example uses the [Portal API](../apis/portal.md) and [Portal Events](../apis/available-events.md/#portal-events) to make any portal dropped by a player follow them around.

```csharp
// Simple script that keeps portals within 2 meters of the player that spawned them
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