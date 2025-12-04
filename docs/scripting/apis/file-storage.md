# FileStorage API

Local persistent storage for **Worlds**.
Used for save data, configuration, cached world state, and access to raw user-provided files placed in the LocalStorage directory.

Files are stored at: `/AppData/Local/ChilloutVR/LocalStorage/[WorldId]/[fileName]`

!!! info
    Only **Worlds** may use FileStorage. Avatars and Props cannot access FileStorage.

### Implementation Details

* Worlds must request user permission to use FileStorage via `FileStorage.RequestUseFileStorage`.
* Files written by this API are **obfuscated**; scripts never see the real filesystem.
  * This is done to prevent writing malicious files, **not secure storage**. The encryption key is stored in the header of each written file.
* Files added manually to a world's LocalStorage folder aren't counted against the world's storage, are read-only, and gated by a user permission.

## FileStorage
<small>**`WasmScripting.FileStorage`**</small>

`FileStorage` provides static methods for reading and writing files to persistent local storage for the current world.

### Static Methods

| Signature                                                             | Description                           |
|-----------------------------------------------------------------------|---------------------------------------|
| [CVRFile](#CVRFile) ReadFile(string fileName)                         | Reads the entire file                 |
| [CVRFile](#CVRFile) ReadFile(string fileName, int offset, int length) | Reads a segment of a file             |
| void WriteFile(string fileName, Span&lt;byte&gt bytes)                     | Writes all bytes (overwrite)          |
| void WriteFile(string fileName, Span&lt;byte&gt bytes, int offset)         | Writes bytes at a specific offset     |
| void DeleteFile(string fileName)                                      | Deletes a file                        |
| void RenameFile(string oldFileName, string newFileName)               | Renames a file                        |
| bool FileExists(string fileName)                                      | Checks if a file exists               |
| string[] GetFiles()                                                   | Returns all file names                |
| int GetFileSize(string fileName)                                      | Returns file size in bytes            |
| long GetTotalSize()                                                   | Total size of all stored files        |
| long GetTotalCapacity()                                               | Maximum allowed storage size          |
| bool CanUseFileStorage()                                              | Whether the world can use FileStorage |
| void RequestUseFileStorage(Action<bool> onResult)                     | Prompts the user once for permission  |

## CVRFile
<small>**`WasmScripting.CVRFile`**</small>

`CVRFile` represents a file returned by `FileStorage.ReadFile`.  

### Instance Properties

| Member | Type       | Description                |
|--------|------------|----------------------------|
| Bytes  | Span&lt;byte&gt | The file's raw byte buffer |
| Length | int        | Number of bytes returned   |

`Bytes` is a live span referencing unmanaged memory.  
Do **not** store it long-term; copy data if needed.

## Relevant Examples

- [Writing A Text File](../examples/writing-a-text-file.md)