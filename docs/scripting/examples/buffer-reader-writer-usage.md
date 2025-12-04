# Example: BufferReaderWriter Usage

Example demonstrating how to use the `BufferReaderWriter` utility to write and read various data types.

```csharp
public partial class BufferReaderWriterExample : WasmBehaviour
{
    private void Start()
    {
        // Write some values
        BufferReaderWriter writer = new BufferReaderWriter();
        writer.Write(12345);
        writer.Write(3.14f);
        writer.Write("Hello Buffer");
        writer.Write(new int[] { 10, 20, 30 });

        Debug.Log($"Wrote {writer.Length} bytes into buffer.");

        // Read them back
        BufferReaderWriter reader = new BufferReaderWriter(writer.Buffer[..writer.Length]);

        reader.Read(out int intVal);
        reader.Read(out float floatVal);
        reader.Read(out string strVal);
        reader.Read(out int[] arrayVal);

        Debug.Log($"Int: {intVal}");
        Debug.Log($"Float: {floatVal}");
        Debug.Log($"String: {strVal}");
        Debug.Log($"Array: [{string.Join(", ", arrayVal)}]");
    }
}
```