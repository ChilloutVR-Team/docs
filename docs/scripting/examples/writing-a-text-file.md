# Example: Writing a Text File

Write and read a simple text file using the [File Storage API](../apis/file-storage.md) and [Buffer Reader Writer](../apis/buffer-reader-writer.md).

```csharp
using UnityEngine;
using WasmScripting;
using CVR;

public partial class FileStorageExample : WasmBehaviour
{
    void Start()
    {
        // Write file
        string dataToWrite = "Hello, FileStorage!";
        byte[] bytesToWrite = System.Text.Encoding.UTF8.GetBytes(dataToWrite);
        FileStorage.WriteFile("test", bytesToWrite);

        // Read file
        CVRFile file = FileStorage.ReadFile("test");

        if (file.Length > 0)
        {
            string content = System.Text.Encoding.UTF8.GetString(file.Bytes);
            Debug.Log($"Read from FileStorage: {content}");
        }
        else
        {
            Debug.Log("No data found in FileStorage for 'test'");
        }
    }
}
```