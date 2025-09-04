# Storage

The `Storage` global provides access to the script's associated Persistence object. The Persistence object is where your
script can store simple forms of data on a user's computer.

We provide two "storage bins:" The `Public` bin and the `Private` bin. Each bin is a property of the Storage global and
are almost identical in terms of API. Each bin has a set amount of data that they can store, as well, to prevent
malicious scripts from filling up the user's hard drive.

We also provide a function to retrieve the `Public` bin for other content by providing the content type and its ID. This
bin will be limited to read only functions.

The bin files are stored
on `%UserProfile%\AppData\LocalLow\ChilloutVR\ChilloutVR\Persistence\<user_id>\<content_type>\<content_id>\`

### Bin Size Limits

| Name             | Size    | Size (Bytes)  |
|------------------|---------|---------------|
| Avatar           | 100 KiB | 102400 bytes  |
| Prop (Spawnable) | 100 KiB | 102400 bytes  |
| World            | 4 MiB   | 4194304 bytes |

## Static Properties

| Name                                            | Description                |
|-------------------------------------------------|----------------------------|
| `Public` (Returns [Public Bin](#Public-Bin))    | Access to the Public Bin.  |
| `Private` (Returns [Private Bin](#Private-Bin)) | Access to the Private Bin. |

## Static Functions

| Name                                                                                                 | Description                                                     |
|------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| `GetPublicStorage(contentType, assetGuid)` <br>(Returns [Public Bin Readonly](#Public-Bin-Readonly)) | Access to other content's Public Bins locked to read only mode. |

### Public Bin

The Public bin is accessible as `Storage.Public`. This bin's corresponding file on disk is user-editable, as it is
stored as clear-text JSON. This file is intended to be used for things the user may need to edit, such as configuration
or tuning values.

This bin is also accessible to other content. So if you want to share data across content, this would be the place to
store it.

#### Properties

| Name          | Type     | Notes                                                                                                                                                                                                                      |
|---------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `HasData`     | `bool`   | <p>Whether this bin has Data or not. It will be true a file was found and loaded successfully.</p>                                                                                                                         |
| `SizeAllowed` | `int`    | <p>How many bytes are allowed for this storage bin, in total. </p><p>Does not include data outside of your control that we add during the serialization process, such as encryption stuff, headers, section data, etc.</p> |
| `CurrentSize` | `int`    | <p>Current reported size of this storage bin, in bytes.</p><p>Does not include data outside of your control that we add during the serialization process, such as encryption stuff, headers, section data, etc. </p>       |
| `Path`        | `string` | Path of the file on disk.                                                                                                                                                                                                  |

#### Methods

| Name                                          | Notes                                                                                                                                                                                                                                                                                                     |
|-----------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `GetBoolean(string key) : bool?`              | Get the value of a key as a `boolean`, or `nil` if the key is `nil` or not present.                                                                                                                                                                                                                       |
| `GetNumber(string key) : number?`             | Get the value of a key as a `number`, or `nil` if the key is `nil` or missing.                                                                                                                                                                                                                            |
| `GetString(string key) : string?`             | Get the value of a key as a `string`, or `nil` if the key is `nil` or missing.                                                                                                                                                                                                                            |
| `GetTable(string key) : table?`               | Get the value of a key as a `table`, or `nil` if the key is `nil` or missing.                                                                                                                                                                                                                             |
| `HasValue(string key) : bool`                 | Determine if the given named `key` is present in the underlying `table`.                                                                                                                                                                                                                                  |
| `SetBoolean(string key, bool? value) : void`  | <p>Set the value of a key to a `boolean` or `nil`.</p><p>You will need to call `Save()` to commit this change to disk.</p>                                                                                                                                                                                |
| `SetNumber(string key, number? value) : void` | <p>Set the value of a key to a `number` or `nil`.</p><p>You will need to call `Save()` to commit this change to disk.</p>                                                                                                                                                                                 |
| `SetString(string key, string? value) : void` | <p>Set the value of a key to a `string` or `nil`.</p><p>You will need to call `Save()` to commit this change to disk.</p>                                                                                                                                                                                 |
| `SetTable(string key, table? value) : void`   | <p>Set the value of a key to a `table` or `nil`.</p><p>**IMPORTANT:** Any values in the provided table or subtables that are not `nil`, `number`, `boolean`, `table`, or `string` will be silently stripped during serialization!</p><p>You will need to call `Save()` to commit this change to disk.</p> |

### Private Bin

The Private bin is accessible as `Storage.Private`. This bin's corresponding file on disk is encrypted and stored as a
binary format, as it is intended to be used for storing deliberately opaque data, such as a user's score in a game,
character levels, *et cetera*.

#### Properties

| Name          | Type     | Notes                                                                                                                                                                                                                      |
|---------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `HasData`     | `bool`   | <p>Whether this bin has Data or not. It will be true a file was found and loaded successfully.</p>                                                                                                                         |
| `SizeAllowed` | `int`    | <p>How many bytes are allowed for this storage bin, in total. </p><p>Does not include data outside of your control that we add during the serialization process, such as encryption stuff, headers, section data, etc.</p> |
| `CurrentSize` | `int`    | <p>Current reported size of this storage bin, in bytes.</p><p>Does not include data outside of your control that we add during the serialization process, such as encryption stuff, headers, section data, etc.</p>        |
| `Path`        | `string` | Path of the file on disk.                                                                                                                                                                                                  |

#### Methods

| Name                                          | Notes                                                                                                                                                                                                                                                                                                     |
|-----------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `GetBoolean(string key) : bool?`              | Get the value of a key as a `boolean`, or `nil` if the key is `nil` or not present.                                                                                                                                                                                                                       |
| `GetNumber(string key) : number?`             | Get the value of a key as a `number`, or `nil` if the key is `nil` or missing.                                                                                                                                                                                                                            |
| `GetString(string key) : string?`             | Get the value of a key as a `string`, or `nil` if the key is `nil` or missing.                                                                                                                                                                                                                            |
| `GetTable(string key) : table?`               | Get the value of a key as a `table`, or `nil` if the key is `nil` or missing.                                                                                                                                                                                                                             |
| `HasValue(string key) : bool`                 | Determine if the given named `key` is present in the underlying `table`.                                                                                                                                                                                                                                  |
| `SetBoolean(string key, bool? value) : void`  | <p>Set the value of a key to a `boolean` or `nil`.</p><p>You will need to call `Save()` to commit this change to disk.</p>                                                                                                                                                                                |
| `SetNumber(string key, number? value) : void` | <p>Set the value of a key to a `number` or `nil`.</p><p>You will need to call `Save()` to commit this change to disk.</p>                                                                                                                                                                                 |
| `SetString(string key, string? value) : void` | <p>Set the value of a key to a `string` or `nil`.</p><p>You will need to call `Save()` to commit this change to disk.</p>                                                                                                                                                                                 |
| `SetTable(string key, table? value) : void`   | <p>Set the value of a key to a `table` or `nil`.</p><p>**IMPORTANT:** Any values in the provided table or subtables that are not `nil`, `number`, `boolean`, `table`, or `string` will be silently stripped during serialization!</p><p>You will need to call `Save()` to commit this change to disk.</p> |

### Public Bin Readonly

The Public Bin Readonly is accessible via `Storage.GetPublicStorage(contentType, assetGuid)`. This bin only provides
functions that read data. It's intended to allow content to react to data stored from other content. If the file is not
found, this function will return `nil`

The `contentType` is an enum to indicate the content type. To use its values you need to import the CVR module
via: `CVR = require("CVR")`

The possible values are:

- `CVR.CVRContentType.Avatar` - For Avatars
- `CVR.CVRContentType.Spawnable` - For Props
- `CVR.CVRContentType.World` - For Worlds

As for the `assetGuid` is a simple string with the guid of the content, for
example `"f566d0c9-155a-4280-9eb6-7792f66b5597"`

#### Properties

| Name      | Type   | Notes                                                                                              |
|-----------|--------|----------------------------------------------------------------------------------------------------|
| `HasData` | `bool` | <p>Whether this bin has Data or not. It will be true a file was found and loaded successfully.</p> |

#### Methods

| Name                              | Notes                                                                               |
|-----------------------------------|-------------------------------------------------------------------------------------|
| `GetBoolean(string key) : bool?`  | Get the value of a key as a `boolean`, or `nil` if the key is `nil` or not present. |
| `GetNumber(string key) : number?` | Get the value of a key as a `number`, or `nil` if the key is `nil` or missing.      |
| `GetString(string key) : string?` | Get the value of a key as a `string`, or `nil` if the key is `nil` or missing.      |
| `GetTable(string key) : table?`   | Get the value of a key as a `table`, or `nil` if the key is `nil` or missing.       |
| `HasValue(string key) : bool`     | Determine if the given named `key` is present in the underlying `table`.            |
