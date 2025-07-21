# CVR Material Updater <div class="whitelisted" data-list="AWP"></div>
Sets properties as vectors on the material `_CVR_Velocity` and `_CVR_Angular_Velocity`.
Shaders can make use of these properties.  
The component searches for a [Renderer](https://docs.unity3d.com/ScriptReference/Renderer.html) on the same game object, this is needed as it will use the material assigned to the renderer.

### Properties

##### Update Type

+ **Update**  
  Executed every frame.
+ **Fixed Update**  
  Executed 50 times per second. 