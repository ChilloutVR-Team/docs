# CVR Global Shader Updater <div class="whitelisted" data-list="W"></div>
This component can be used to define global [Shader](https://docs.unity3d.com/Manual/Shaders.html) properties.
This means shaders can access those global variables, and you can also update those variables on runtime by e.g, an animation.

### Properties

#### Update Values
You have four different variables, each being a [Vector3](https://docs.unity3d.com/ScriptReference/Vector3.html).
The name those variables have is `CVR_CCK_Global_` + `number` of the variable. You can identify your variable number,
by looking at the variable name.

#### Update Texture
You can assign a render texture which will be the exact texture which will be made available.
You also need to assign a name to the variable.