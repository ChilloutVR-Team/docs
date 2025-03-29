# WorldAPI

Accessible via the `WorldAPI` [Global](globals.md#api-access). This API provides access to the Local [World](#World)

## Static Properties

| Name                                                 | Description                         |
|------------------------------------------------------|-------------------------------------|
| `CurrentWorld : World` <br>(Returns [World](#World)) | The reference to the current World. |

## World

The `World` instances can be accessed via:

- The `WorldAPI` [Global](globals.md#api-access)

### Properties

| Property           | Description                      |
|--------------------|----------------------------------|
| `WorldID : string` | Unique identifier for the World. |

### World Picture

Requesting the picture is a bit more complicated as it needs to be acquired in the first place. So it's not a function
that will give the results right away. Instead, it uses a callback lua function, which is basically a normal lua
function that gets called whenever the request is finished.

For a complete example, check the avatar (the World is pretty much the same, just changing the method called)
picture: [Player Profile and Avatar Picture Example](../examples/player-profile-picture.md)

#### Methods

| Name                                                                                                                                                                                                                         | Description                                                                         |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| `RequestImage(callback OnWorldImage, bool castToTexture) : void`<br>&nbsp;&nbsp;- `#arg1` lua function for the [callback](#callbacks)<br>&nbsp;&nbsp;- `#arg2` *[Optional]* Whether to cast the Texture2D to Texture or not. | Sends a request to fetch the Player World's picture as a Texture2D or as a Texture. |

#### Callbacks

| Name                                                                                                                                                                                                                      | Description                                                         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `OnWorldImage(Texture2D/Texture texture, string WorldID) : void`<br>&nbsp;&nbsp;- `#arg1` The Texture/Texture2D reference for the World's image<br>&nbsp;&nbsp;- `#arg2` *[Optional]* The World's ID the image belongs to | Gets called when `RequestImage` finished and is sending the results |
