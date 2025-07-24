# CVR Texture Property Parser <div class="whitelisted" data-list="AWP"></div>
Used to parse a pixels color channel value from a texture.

##### Texture Type
Defines how you will set a reference to the texture used.

+ **Local Texture** Use a local object in your scene to set a reference.
+ **Global Texture** Use a global texture exposed by e.g. [CVR Global Shader Updater](cvr-global-shader-updater.md)

##### Texture
Reference to a render texture to be used, only available if [Type](#texture-type) is set to **Local Texture**

##### Texture Name
Reference name of the global render texture, only available if [Type](#texture-type) is set to **Global Texture**.
You can expose textures globally by using the [CVR Global Shader Updater](cvr-global-shader-updater.md).

## Tasks
You can define multiple tasks here. A Task describes how to parse a value and where to write it to.
One Task consists of the following properties:

##### X/Y Position
Defines the X/Y coordinates.
This is measured/to be configured per pixel, **x 0, y 0** would be the first pixel.

!!! tip "Texture Coordinates in Unity" 
    Texture coordinates start from left bottom to top right.
    This means, **x 0, y 0** would be the pixel in the very bottom left corner.
        

##### Color Channel
Defines the color channel, whose value will be used.

##### Min/Max Value
Defines the minimum and maximum value to be inserted.
This means the color value will be lerped to the given min and max value.

##### Target
The target game object, where you want your value to be written to.

##### Component
A list of all the components present on the target game object. Select your target component here.

##### Property
List of all the public property's available on the component. Select your target property here.

!!! tip "Animator Driver"
    You can also write values from the Texture Property Parser into an animator parameter using the [CVR Animator Driver](cvr-animator-driver.md)