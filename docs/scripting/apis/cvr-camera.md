# CVR Camera API

Provides wrapped access to the active player camera and portable camera, along with full control over camera rendering settings.

## CVR Camera
<big><sub>**`CVR.CVRCamera`**</sub></big>

Base class for [CVR Player Camera](#cvr-player-camera) and [CVR Portable Camera](#cvr-portable-camera), providing access to common camera settings and functionality.

### Static Members

#### Static Properties

| Signature                                                           | Description                         |
|---------------------------------------------------------------------|-------------------------------------|
| [CVRPlayerCamera](#cvr-player-camera) PlayerCamera \{ get; \}       | Returns the player camera wrapper   |
| [CVRPortableCamera](#cvr-portable-camera) PortableCamera \{ get; \} | Returns the portable camera wrapper |

### Instance Members

#### Instance Methods

| Signature                                              | Description                                                                                                                                                                                                 |
|--------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Camera GetCamera();                                    | Returns the underlying Unity `Camera` component.<br/><sub>Note: The CVRPlayerCamera wraps multiple cameras, so the camera returned by this method can change. It is best to not cache this component.</sub> |
| float GetNearClipPlane();                              | Gets the near clip plane                                                                                                                                                                                    |
| void SetNearClipPlane(float v);                        | Sets the near clip plane                                                                                                                                                                                    |
| float GetFarClipPlane();                               | Gets the far clip plane                                                                                                                                                                                     |
| void SetFarClipPlane(float v);                         | Sets the far clip plane                                                                                                                                                                                     |
| bool GetAllowHDR();                                    | Gets HDR usage                                                                                                                                                                                              |
| void SetAllowHDR(bool v);                              | Sets HDR usage                                                                                                                                                                                              |
| DepthTextureMode GetDepthTextureMode();                | Gets the depth texture mode                                                                                                                                                                                 |
| void SetDepthTextureMode(DepthTextureMode v);          | Sets the depth texture mode                                                                                                                                                                                 |
| bool GetUseOcclusionCulling();                         | Gets occlusion culling state                                                                                                                                                                                |
| void SetUseOcclusionCulling(bool v);                   | Sets occlusion culling state                                                                                                                                                                                |
| bool GetAllowMSAA();                                   | Gets MSAA allowance                                                                                                                                                                                         |
| void SetAllowMSAA(bool v);                             | Sets MSAA allowance                                                                                                                                                                                         |
| LayerMask GetCullingMask();                            | Gets the culling mask                                                                                                                                                                                       |
| void SetCullingMask(LayerMask v);                      | Sets the culling mask                                                                                                                                                                                       |
| CameraClearFlags GetClearFlags();                      | Gets clear flags                                                                                                                                                                                            |
| void SetClearFlags(CameraClearFlags v);                | Sets clear flags                                                                                                                                                                                            |
| Color GetBackgroundColor();                            | Gets the background color                                                                                                                                                                                   |
| void SetBackgroundColor(Color v);                      | Sets the background color                                                                                                                                                                                   |
| bool GetLayerCullSpherical();                          | Gets spherical layer culling state                                                                                                                                                                          |
| void SetLayerCullSpherical(bool v);                    | Sets spherical layer culling state                                                                                                                                                                          |
| float[] GetLayerCullDistances();                       | Gets per-layer culling distances                                                                                                                                                                            |
| void SetLayerCullDistances(float[] arr);               | Sets per-layer culling distances                                                                                                                                                                            |
| void CopyFrom(Camera source);                          | Copies camera settings from another camera                                                                                                                                                                  |
| void ResetToDefault();                                 | Resets camera settings to default                                                                                                                                                                           |
| void CopyPostProcessing(Camera sourceCamera);          | Copies post-processing settings from another camera                                                                                                                                                         |
| void ClearPostProcessing();                            | Clears post-processing settings                                                                                                                                                                             |
| Vector3 GetEyePosition(Camera.StereoscopicEye eye);    | Gets the per-eye world position                                                                                                                                                                             |
| Quaternion GetEyeRotation(Camera.StereoscopicEye eye); | Gets the per-eye world rotation                                                                                                                                                                             |

## CVR Player Camera
<big><sub>**`CVR.CVRPlayerCamera` : `CVR.CVRCamera`**</sub></big>

Provides wrapped access to the active player camera.

### Instance Methods

| Signature                                  | Description                                                                                    |
|--------------------------------------------|------------------------------------------------------------------------------------------------|
| CVRCameraRenderingMode GetRenderingMode(); | Returns the active rendering mode for the player camera.<br/>(0:Normal, 1:FakeMultiPass, 2:MockHMD) |

## CVR Portable Camera
<big><sub>**`CVR.CVRPortableCamera` : `CVR.CVRCamera`**</sub></big>

Provides wrapped access to the portable camera.

### Instance Methods

| Signature                                         | Description                                            |
| ------------------------------------------------- |--------------------------------------------------------|
| bool IsActive();                                  | Returns true if the portable camera is open and active |