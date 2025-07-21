# Shader Globals

The following contains an overview of shader global variables provided by default in ChilloutVR, enabling dynamic shaders that respond to player states, hardware info, and system features.

---

## Runtime and Client State

These globals expose the current system time, instance data, user hardware status (e.g., FBT or controller battery), and client UI state.

| Global                | Type  | Description                                                                                    |
| --------------------- | ----- | ---------------------------------------------------------------------------------------------- |
| **CVRTime**           | vec4  | x: System Time Seconds<br>y: UTC Seconds<br>z: DayOfYear<br>w: IsLeapYear (0 or 1)             |
| **CVRGlobalParams1**  | vec4  | x: Ping<br>y: Players in instance<br>z: Left Controller Battery<br>w: Right Controller Battery |
| **CVRGlobalParams2**  | vec4  | x: FullbodyActive (0 or 1)<br>y: Left Foot Battery<br>z: Right Foot Battery<br>w: Hip Battery  |
| **CVRIsUsingVr**      | float | Whether the client is in VR mode (0 or 1)                                                      |
| **CVRPlayerUpVector** | vec3  | Up vector of the local player                                                                  |
| **CVRQuickMenuOpen**  | float | Whether the Quick Menu is open (0 or 1)                                                        |
| **CVRMainMenuOpen**   | float | Whether the Main Menu is open (0 or 1)                                                         |

---

## Camera Rendering

Provides information about the currently rendering camera.

| Global              | Type  | Description                                                                             |
| ------------------- | ----- |-----------------------------------------------------------------------------------------|
| **CVRRenderingCam** | float | 0: Normal Camera<br>1: Portable Camera<br>2: [CVRMirror](components/cvr-mirror.md) Camera |

---

## Player Positions

These globals expose bone and positional tracking data for players in the instance. **The local player is always at index 0.** The order of remote players is not guaranteed and cannot be relied upon for identification.

| Global                              | Type    | Description                                         |
| ----------------------------------- | ------- | --------------------------------------------------- |
| **\_CVR\_PlayerRootPositions**      | vec4\[] | x, y, z: Root Position<br>w: Avatar Height (meters) |~~~~
| **\_CVR\_PlayerHipPositions**       | vec4\[] | Hip Position                                        |
| **\_CVR\_PlayerHeadPositions**      | vec4\[] | Head Position                                       |
| **\_CVR\_PlayerChestPositions**     | vec4\[] | Chest Position                                      |
| **\_CVR\_PlayerLeftHandPositions**  | vec4\[] | Left Hand Position<br>w: Left Hand Gesture Value    |
| **\_CVR\_PlayerRightHandPositions** | vec4\[] | Right Hand Position<br>w: Right Hand Gesture Value  |
| **\_CVR\_PlayerLeftFootPositions**  | vec4\[] | Left Foot Position                                  |
| **\_CVR\_PlayerRightFootPositions** | vec4\[] | Right Foot Position                                 |

!!! tip
    These arrays are capped at 255 entries. Use `CVRGlobalParams1.y` to retrieve the number of players in the instance.

---

## Custom Global Parameters

Provided by the [CVRGlobalShaderUpdater](components/cvr-global-shader-updater.md) CCK World Component that allows you to define custom global parameters outside of Scripting.

| Global                  | Type | Description                              |
| ----------------------- | ---- | ---------------------------------------- |
| **CVR\_CCK\_Global\_1** | vec4 | Custom value from CVRGlobalShaderUpdater |
| **CVR\_CCK\_Global\_2** | vec4 | Custom value from CVRGlobalShaderUpdater |
| **CVR\_CCK\_Global\_3** | vec4 | Custom value from CVRGlobalShaderUpdater |
| **CVR\_CCK\_Global\_4** | vec4 | Custom value from CVRGlobalShaderUpdater |

!!! tip
    Custom global **textures** can also be defined via CVRGlobalShaderUpdater. These textures are then accessible via the [CVRTexturePropertyParser](components/cvr-texture-property-parser.md) CCK Component.