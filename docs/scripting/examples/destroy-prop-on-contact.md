# Example: Destroy Prop on Contact

Example using the [Prop API](../apis/prop.md) and [Prop Events](../apis/available-events.md/#prop-events) to destroy any prop that enters its trigger collider.

```csharp
// Destroys any prop that enters its trigger collider
public partial class PropDestroyer : WasmBehaviour
{
    private void OnPropTriggerEnter(Prop prop, Collider other)
    {
        prop.Destroy();
    }
}
```