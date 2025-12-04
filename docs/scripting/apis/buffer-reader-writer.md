<big><sub>**`WasmScripting`**</sub></big>
# BufferReaderWriter

A helper for reading and writing data to byte buffers. Buffers grow automatically. Supports UTF8 and UTF16 strings.

## Instance Members

### Constructors

| Signature                                    | Description                                  |
|----------------------------------------------|----------------------------------------------|
| BufferReaderWriter(int initialCapacity = 64) | Creates a new buffer with the given capacity |
| BufferReaderWriter(byte[] data)              | Wraps an existing byte array                 |
| BufferReaderWriter(Span<byte> data)          | Wraps an existing span                       |

### Instance Properties

| Signature         | Description                        |
|-------------------|------------------------------------|
| Span<byte> Buffer | The internal buffer                |
| int Length        | Total number of bytes written      |
| int Position      | Current read/write cursor position |

### Instance Methods

#### Write Methods

| Signature                                                                         | Description                              |
|-----------------------------------------------------------------------------------|------------------------------------------|
| void Write<T>(T value) where T : unmanaged                                        | Writes a single value                    |
| void Write<T>(T[] value, bool writeLength = true) where T : unmanaged             | Writes an array (optional length prefix) |
| void Write<T>(ReadOnlySpan<T> value, bool writeLength = true) where T : unmanaged | Writes a span (optional length prefix)   |
| void Write(string value, Encoding encoding = null, bool writeLength = true)       | Writes a string (UTF8 by default)        |
| void WriteStringFast(string value, bool writeLength = true)                       | Writes a UTF16 string                    |

#### Read Methods

| Signature                                                       | Description                                      |
|-----------------------------------------------------------------|--------------------------------------------------|
| void Read<T>(out T value) where T : unmanaged                   | Reads a single value                             |
| void Read<T>(out T[] value) where T : unmanaged                 | Reads an array (expects length prefix)           |
| void Read<T>(out T[] value, int length) where T : unmanaged     | Reads an array of known length                   |
| void Read<T>(out Span<T> value) where T : unmanaged             | Reads into a span (expects length prefix)        |
| void Read<T>(out Span<T> value, int length) where T : unmanaged | Reads into a span of known length                |
| void Read(out string value, Encoding encoding = null)           | Reads a string (UTF8 by default, expects length) |
| void Read(out string value, int size, Encoding encoding = null) | Reads a string of known size                     |
| void ReadStringFast(out string value)                           | Reads a UTF16 string (expects length prefix)     |
| void ReadStringFast(out string value, int length)               | Reads a UTF16 string of known length             |

## Example

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