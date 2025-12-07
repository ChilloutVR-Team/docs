<big><sub>**`WasmScripting.BufferReaderWriter`**</sub></big>
# BufferReaderWriter

A helper for reading and writing data to byte buffers. Buffers grow automatically. Supports UTF8 and UTF16 strings.

## Instance Members

### Constructors

| Signature                                    | Description                                  |
|----------------------------------------------|----------------------------------------------|
| BufferReaderWriter(int initialCapacity = 64) | Creates a new buffer with the given capacity |
| BufferReaderWriter(byte[] data)              | Wraps an existing byte array                 |
| BufferReaderWriter(Span\&lt;byte\&lt; data)          | Wraps an existing span                       |

### Instance Properties

| Signature           | Description                        |
|---------------------|------------------------------------|
| Span\&lt;byte\&lt; Buffer | The internal buffer                |
| int Length          | Total number of bytes written      |
| int Position        | Current read/write cursor position |

### Instance Methods

#### Write Methods

| Signature                                                                         | Description                              |
|-----------------------------------------------------------------------------------|------------------------------------------|
| void Write&lt;T&lt;(T value) where T : unmanaged                                        | Writes a single value                    |
| void Write&lt;T&lt;(T[] value, bool writeLength = true) where T : unmanaged             | Writes an array (optional length prefix) |
| void Write&lt;T&lt;(ReadOnlySpan&lt;T&lt; value, bool writeLength = true) where T : unmanaged | Writes a span (optional length prefix)   |
| void Write(string value, Encoding encoding = null, bool writeLength = true)       | Writes a string (UTF8 by default)        |
| void WriteStringFast(string value, bool writeLength = true)                       | Writes a UTF16 string                    |

#### Read Methods

| Signature                                                       | Description                                      |
|-----------------------------------------------------------------|--------------------------------------------------|
| void Read&lt;T&lt;(out T value) where T : unmanaged                   | Reads a single value                             |
| void Read&lt;T&lt;(out T[] value) where T : unmanaged                 | Reads an array (expects length prefix)           |
| void Read&lt;T&lt;(out T[] value, int length) where T : unmanaged     | Reads an array of known length                   |
| void Read&lt;T&lt;(out Span&lt;T&lt; value) where T : unmanaged             | Reads into a span (expects length prefix)        |
| void Read&lt;T&lt;(out Span&lt;T&lt; value, int length) where T : unmanaged | Reads into a span of known length                |
| void Read(out string value, Encoding encoding = null)           | Reads a string (UTF8 by default, expects length) |
| void Read(out string value, int size, Encoding encoding = null) | Reads a string of known size                     |
| void ReadStringFast(out string value)                           | Reads a UTF16 string (expects length prefix)     |
| void ReadStringFast(out string value, int length)               | Reads a UTF16 string of known length             |

## Relevant Examples

- [Buffer Reader Writer Usage](../examples/buffer-reader-writer-usage.md)
- [Network Manager](../examples/network-manager.md)
- [Writing A Text File](../examples/writing-a-text-file.md)