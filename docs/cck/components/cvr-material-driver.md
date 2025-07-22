# CVR Material Driver <div class="whitelisted" data-list="AWP"></div>
With this component you can set specific [Material](https://docs.unity3d.com/ScriptReference/Material.html) properties on [Renderer's](https://docs.unity3d.com/ScriptReference/Renderer.html). 
This means you can e.g., animate a mesh with multiple materials using the same shader, but target one specific material.

### Properties

##### Material slots
At first, you have 16 x 4 variables. This means you can have up to 16 [Materials](https://docs.unity3d.com/ScriptReference/Material.html)
on one CVR Material Driver script.

##### Materials
A list of the properties you want manage. Select the [Renderer](https://docs.unity3d.com/ScriptReference/Renderer.html)
containing the material and parameter you want to control.

##### How it works
Material 01 is he first material in the **Materials** lists.
X, Y, Z, W are the different values of the property selected.