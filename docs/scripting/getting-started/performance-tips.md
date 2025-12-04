# Performance Tips

Performance inside WASM scripting heavily depends on minimizing interop between Unity and the WASM VM.

- **Unity & Game APIs are evil.**
    - Any interaction with Unity or CVR is an external call and should be minimized where possible.

- **Keep interop low.**
    - Each call between the VM and Unity goes through multiple layers:  
      `VM -> CVR Links -> Unity -> CVR Links -> VM`
      -# The fewer roundtrips, the faster your code will run.

- **Cache frequently used data.**
    - Fetch objects or properties once and reuse them instead of repeatedly accessing Unity APIs or game wrappers.

... basically just dont spam game and unity apis, cache shit, and you're fine (this does not apply to just wasm)
https://github.com/m7rk/vrchat-gameboy/issues/1

## Example:

```csharp
private void OnWillRenderObject()
{
    // Work with camTransform instead of calling Camera.current.transform repeatedly
    Transform camTransform = Camera.current.transform;

    // pos = Camera.current.transform.position;
    // rot = Camera.current.transform.rotation;

    Vector3 pos = camTransform.position;
    Quaternion rot = camTransform.rotation;

    // Try to pass as much data in/out at a time
    transform.SetPositionAndRotation(pos, rot);
    // transform.position = pos;
    // transform.rotation = rot;
}
```