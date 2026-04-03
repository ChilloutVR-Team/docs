# FileStorage API

Local persistent storage for **Worlds**.
Used for save data, configuration, cached world state, and access to raw user-provided files placed in the LocalStorage directory.

Files are stored at: `/AppData/Local/ChilloutVR/LocalStorage/[WorldId]/[fileName]`

!!! info
    Only **Worlds** may use FileStorage. Avatars and Props cannot access FileStorage.

### Is this safe?

We understand that any API involving file access raises concerns. Here's the short version:

FileStorage is a save-data system. Think of it like a game's save folder. Each world gets its own folder, and that's the only place it can read or write. It cannot see, access, or interact with anything else on your computer. Not your browser, not your documents, not your registry, nothing. The world can't even use this folder until you say yes to a permission prompt, and you can take that permission back whenever you want.

If a world asks for "Read Raw Files", that just means it wants to read files **you** put in its folder yourself, like ROMs for an emulator or a custom config. It still can't look anywhere else.

The sections below go into the technical details if you want them.

#### Security Scope

* FileStorage is **completely sandboxed**. All reads and writes are confined to the world's own `LocalStorage` folder listed above. The API has no ability to access any other location on your computer.
* Filenames are sanitized by stripping all characters that the OS considers invalid in a filename, including `/` and `\`. Path traversal (e.g. `../../`) is not possible.
* Filenames are limited to **100 characters**. Worlds are limited to **1000 files** and a user-configurable total size cap.
* A world **cannot use FileStorage at all** until the user explicitly grants permission. This permission can be revoked at any time.
* FileStorage cannot access your browser data, system files, or anything outside its sandbox.

#### Obfuscation

* Files written by this API are **obfuscated** on disk using a per-file XOR key stored in the file header and a randomized file name.
* This exists to prevent worlds from writing files that could be mistaken for or executed as something else (e.g. `.exe`, `.dll`). It is **not encryption** and should not be treated as secure storage for sensitive data.

#### Raw User Files

* Users can manually place files into a world's `LocalStorage` folder for that world to read (e.g. custom textures, ROM files for an emulator, configuration files).
* These files require a **separate user permission** ("Read Raw Files") that must also be explicitly granted.
* Raw files are **read-only** to the world. The world cannot modify or delete them.
* Raw files are not counted against the world's storage limit set by the user.
* This permission still only allows reading files inside the world's own `LocalStorage` folder. It does not grant access to any other directory.

## FileStorage
<small>**`WasmScripting.FileStorage`**</small>

`FileStorage` provides static methods for reading and writing files to persistent local storage for the current world.

### Static Methods

| Signature                                                             | Description                           |
|-----------------------------------------------------------------------|---------------------------------------|
| [CVRFile](#CVRFile) ReadFile(string fileName)                         | Reads the entire file                 |
| [CVRFile](#CVRFile) ReadFile(string fileName, int offset, int length) | Reads a segment of a file             |
| void WriteFile(string fileName, Span&lt;byte&gt; bytes)               | Writes all bytes (overwrite)          |
| void WriteFile(string fileName, Span&lt;byte&gt; bytes, int offset)   | Writes bytes at a specific offset     |
| void DeleteFile(string fileName)                                      | Deletes a file                        |
| void RenameFile(string oldFileName, string newFileName)               | Renames a file                        |
| bool FileExists(string fileName)                                      | Checks if a file exists               |
| string[] GetFiles()                                                   | Returns all file names                |
| int GetFileSize(string fileName)                                      | Returns file size in bytes            |
| long GetTotalSize()                                                   | Total size of all stored files        |
| long GetTotalCapacity()                                               | Maximum allowed storage size          |
| bool CanUseFileStorage()                                              | Whether the world can use FileStorage |
| void RequestUseFileStorage(Action&lt;bool&gt; onResult)               | Prompts the user once for permission  |

## CVRFile
<small>**`WasmScripting.CVRFile`**</small>

`CVRFile` represents a file returned by `FileStorage.ReadFile`.  

### Instance Properties

| Member | Type             | Description                |
|--------|------------------|----------------------------|
| Bytes  | Span&lt;byte&gt; | The file's raw byte buffer |
| Length | int              | Number of bytes returned   |

`Bytes` is a live span referencing unmanaged memory.  
Do **not** store it long-term; copy data if needed.

## Relevant Examples

- [Writing A Text File](../examples/writing-a-text-file.md)