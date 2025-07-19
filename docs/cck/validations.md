The CCK runs a series of validation steps on your content before upload. Each validation flags issues at one of three severity levels: Info, Warning, or Error, and some provide an automatic fix to resolve detected problems. 

Validations which report an Error block the build process until the issue is resolved, while those that report a Warning or Info do not block building but indicate potential issues that should be addressed.

The following sections describe each validation, its severity, and any automatic fixes it provides.

## Total Triangle Count

`Severity: Info`

Counts the total number of triangles (the basic polygons that make up your 3D meshes) on your content.

An info is reported if the total triangle count exceeds `100,000` triangles. A warning is reported if the total triangle count exceeds `200,000` triangles.

This is a soft limit to help you keep your content performant. Excessive triangles can lead to poor performance, especially on lower-end hardware.

## Total Material Slots

`Severity: Info`

Counts the total number of material slots in your content.

An info is reported if the total material slot count exceeds `15`. A warning is reported if it exceeds `30`.

This is a soft limit to help you keep draw calls low. Each material slot generates a separate draw call, and too many draw calls can overload the CPU and reduce frame rate.

## Camera Missing Render Texture

`Severity: Warning`

Finds any Camera component on an Avatar or Prop that has no assigned Render Texture. Cameras without a render target are removed on content load to prevent such content from drawing on top of the player camera.

## Potential Depth Light

`Severity: Warning` `Autofix Available`

Detects directional lights that meet all of the following criteria:

* Intensity of 0.01 or less
* Culling mask includes only the Ignore Raycast, Water, or CVRReserved3 layers
* Hard shadows enabled

These lights are usually part of prefabs shipped alongside shaders, (Mochie, Doppelgänger, cancerspace, and Poiyomi), that require depth information to function. These lights force the depth buffer to be available by casting shadows on empty layers which the player camera always renders.

These `DepthGet` prefabs are only needed in environments where the depth buffer is not made available by default. 

In ChilloutVR the depth buffer is always provided so these lights are not needed. While they do not cause any issue being present, they are a hack, so it is recommended to remove them.

###### Autofix

Destroys any detected depth‑forcing lights

## Long Range Audio

`Severity: Warning`

Flags any AudioSource component set to 2D mode or with a maximum falloff distance greater than 15 meters. Long range audio sources can cause audio to remain audible when it should fade out, so your content will be tagged with a warning.

## Loud Audio

`Severity: Warning`

Identifies audio clips whose average volume exceeds –8dB. Clips above this level can clip or be uncomfortably loud. Your content will be tagged with Loud Audio if any audio clips exceed this threshold.

## Potentially Non SPI Shaders

`Severity: Warning`

Scans every shader for the four Unity stereo rendering macros:

* UNITY\_VERTEX\_INPUT\_INSTANCE\_ID
* UNITY\_VERTEX\_OUTPUT\_STEREO
* UNITY\_SETUP\_INSTANCE\_ID
* UNITY\_INITIALIZE\_VERTEX\_OUTPUT\_STEREO

If any of these macros are missing, the shader is considered potentially Non-SPI (Single Pass Instanced) compatible and may not render correctly in VR.

This check is not guaranteed to be accurate. It only looks for specific macro patterns and may miss broken or improperly implemented stereo support. Likewise, some valid shaders may be flagged if they do not use the standard macro layout, or may not be a concern such as shaders used in blits.

This validation does not block building but is useful to identify shaders that could cause rendering issues in VR.

For more information on SPI requirements, see Unity’s documentation on [Single-pass instanced rendering and custom shaders](<https://docs.unity3d.com/Manual/SinglePassInstancing.html>).

## Missing or Broken Shaders

`Severity: Error`

Finds materials using the built‑in error shader or shaders that failed to compile. Unity's error shader is not SPI compatible (only renders in one eye in VR). This blocks building until all shaders compile and no materials reference the error shader.

## Requires Streaming Mipmaps

`Severity: Error` `Autofix Available`

Ensures that every texture used by a MeshRenderer or SkinnedMeshRenderer has Streaming Mipmaps enabled. Unity uses mesh bounds and UVs from these components to determine which mip level to load at runtime. Without streaming, all mip levels are loaded which increases GPU memory usage and can reduce performance.

This validation reports an error for any supported renderer using textures without streaming enabled.

See the Unity documentation for more information:

* [How Unity calculates the required mip level](https://docs.unity3d.com/2022.1/Documentation/Manual/TextureStreaming.html#calculate-mip-level)
* [Limitations](https://docs.unity3d.com/2022.1/Documentation/Manual/TextureStreaming.html#limitations)

###### Autofix

Enables Streaming Mipmaps on textures used by MeshRenderer and SkinnedMeshRenderer components

## Unsupported Streaming Mipmaps

`Severity: Warning` `Autofix Available`

Detects textures with Streaming Mipmaps enabled that are not used on supported renderer components. When used on particle systems or other components without mesh bounds and standard UVs, Unity cannot calculate the correct mip level and defaults to low-resolution mips. This results in blurry textures.

This validation reports a warning for any texture with streaming enabled in unsupported use cases.

See the Unity documentation for more information:

* [How Unity calculates the required mip level](https://docs.unity3d.com/2022.1/Documentation/Manual/TextureStreaming.html#calculate-mip-level)
* [Limitations](https://docs.unity3d.com/2022.1/Documentation/Manual/TextureStreaming.html#limitations)

###### Autofix

Disables Streaming Mipmaps on textures used outside of supported renderers

## Texture Too Large

`Severity: Error` `Autofix Available`

Finds textures with import dimensions larger than `8192×8192` pixels. These textures are too large for practical use and can significantly increase memory usage. This validation blocks building until all oversized textures are addressed.

###### Autofix

Clamps the texture’s import size to 8192 or lower without modifying the source image.

## Non Legacy Blendshape Normals

`Severity: Error` `Autofix Available`

Identifies meshes whose blendshape normals import mode is set to Calculate. Calculated normals greatly increase file size and can cause lighting artifacts when blendshapes are changing. This blocks building until the import mode is changed to Legacy or None.

###### Autofix

Sets blendshape normals import mode to Legacy on affected meshes

## Missing Scripts

`Severity: Error` `Autofix Available`

Finds any GameObject with missing MonoBehaviour references. Missing scripts cause the build to fail. This blocks building until all missing references are removed.

###### Autofix

Removes missing script components from affected GameObjects