# CVR Skybox Manipulator <div class="whitelisted" data-list="P"></div>
This advanced component can be used to manipulate how the skybox renders for a target camera. It allows you to customize the skybox’s material, mesh, origin, and local transform settings for unique visual effects.

This can also be used to simply redraw the Skybox while camera stacking without clearing depth.

> Note: This component does not affect scene lighting or GI. If you are simply trying to customize the skybox material for a camera, consider using the [UnityEngine Skybox](https://docs.unity3d.com/2021.3/Documentation/ScriptReference/Skybox.html) component.

This component can be tested in-editor.

### Properties

##### Target Camera  
Specifies the camera whose skybox will be manipulated. This can be set to the Reference Camera defined in CVRWorld if you wish to apply this to the Player camera.

##### Center on Eye  
Defines how the skybox is centered relative to the camera’s eye position.  
+ **0:** Skybox is centered at the world origin.  
+ **1:** Skybox is fully centered on the camera’s eye position.  
You can set any value between 0 and 1 to adjust the parallax effect.

##### Origin Transform  
Specifies the origin point for the parallax effect. If not set, the world origin is used by default.

##### Align To World Space  
When enabled, aligns the skybox to world space instead of matching the camera’s rotation.  

##### Local Position  
Offsets the skybox’s position relative to the target camera & origin position.

##### Local Rotation  
Rotates the skybox locally relative to the target camera & origin rotation.

##### Local Scale  
Scales the skybox. The default scale is set to **Vector3.one * 0.5**.

##### Use Custom Skybox Material  
When enabled, the component will use a custom skybox material instead of the default.

##### Skybox Material  
The material applied to the skybox when a custom material is used. If the shader used contains "6 Sided" or "6Sided" and has six or more passes, it will be drawn as a 6-sided skybox.

##### Use Custom Skybox Mesh  
When enabled, allows the use of a custom mesh for the skybox.

##### Skybox Mesh  
The mesh that will be used to render the skybox when a custom mesh is selected. If the custom mesh has exactly 6 submeshes, it will be drawn as a 6-sided skybox.

---

### Skybox Rendering

The skybox is rendered in one of two modes:

+ **6-Sided Mode:**  
  This mode is activated when either:
  - A custom mesh with exactly **6 submeshes** is used, or
  - A custom material is provided whose shader name contains "6 Sided" or "6Sided" and has at least **6 passes**.

  In 6-sided mode, the same material is applied to all submesh, and submesh is drawn using its respective shader pass.

+ **Default Mode:**  
  If the conditions for 6-sided mode are not met, the skybox is rendered using the default skybox sphere mesh or a custom mesh with a single submesh. In this case, rendering uses only the first shader pass (subpass 0) and the first submesh (submesh 0).

---

### Public Properties (For Scripting Use)

These public properties are specifically provided for scripting, allowing runtime adjustments to the skybox manipulator:

+ **SkyboxMaterial**  
  - **Getter/Setter:** Access or modify the custom skybox material.  
  - Changing this value resets the cached material and marks the skybox as updated.
  
+ **UseCustomSkyboxMaterial**  
  - **Getter/Setter:** Enable or disable the use of a custom skybox material.  
  - Toggling this option resets the material cache and updates the skybox.

+ **SkyboxMesh**  
  - **Getter/Setter:** Access or assign a custom mesh for the skybox.  
  - Updates reset the cached mesh and flag the skybox for a refresh.
  
+ **UseCustomSkyboxMesh**  
  - **Getter/Setter:** Toggle the usage of a custom skybox mesh.  
  - Changes are immediately reflected by resetting the mesh cache.

+ **CenterOnEye**  
  - **Getter/Setter:** Adjust the centering of the skybox relative to the camera’s eye.  
  - The value is clamped between 0 and 1 and updates the parallax effect.

+ **OriginTransform**  
  - **Getter/Setter:** Set or update the origin transform used for the parallax effect.

+ **AlignToWorldSpace**  
  - **Getter/Setter:** Switch between aligning the skybox to world space or to the camera’s rotation.

+ **LocalPosition, LocalRotation, LocalScale**  
  - **Getter/Setter:** Modify the local transformation (position, rotation, scale) of the skybox relative to the target camera.
