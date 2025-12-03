<big><sub>**`CVR.CVRLayers`**</sub></big>

# CVR Layers

Defines all CVR reserved and user-assignable layers used throughout CVR.
This makes it easier to reference layers by name rather than hardcoding hard-to-remember integer values.

## Layer Constants

| Name             | Value | Content Layer | Description                                                                           |
|------------------|-------|---------------|---------------------------------------------------------------------------------------|
| Default          | 0     | ✔️            | Default Unity layer                                                                   |
| TransparentFX    | 1     | ✔️            | Transparent effects                                                                   |
| IgnoreRaycast    | 2     | ✔️            | Used by PlayerSphereProxy & GravityZone; ignored by raycasts                          |
| Layer3           | 3     | ✔️            | Unused general-purpose layer                                                          |
| Water            | 4     | ✔️            | Same as Default                                                                       |
| UI               | 5     | ✔️            | Standard UI layer                                                                     |
| PassPlayer       | 6     | ✔️            | Allows player passthrough                                                             |
| BlockPlayer      | 7     | ✔️            | Blocks player movement                                                                |
| PlayerLocal      | 8     | ✖️            | Local player avatar & controller; ignored by raycasts but used by particle collisions |
| PlayerClone      | 9     | ✖️            | Internal only                                                                         |
| PlayerNetwork    | 10    | ✖️            | Remote player avatars and colliders                                                   |
| MirrorReflection | 11    | ✔️            | Same as Default                                                                       |
| CameraOnly       | 12    | ✔️            | Rendered exclusively in Portable Camera & misconfigured World mirrors                 |
| CVRReserved2     | 13    | ✖️            | Global post-processing volume; not rendered by player cameras                         |
| CVRReserved3     | 14    | ✖️            | Prevents mirrors from rendering other mirrors                                         |
| UIInternal       | 15    | ✖️            | Internal UI-only layer                                                                |
| CVRContent1      | 16    | ✔️            | World-controlled content layer                                                        |
| CVRContent2      | 17    | ✔️            | World-controlled content layer                                                        |
| CVRContent3      | 18    | ✔️            | World-controlled content layer                                                        |
| CVRContent4      | 19    | ✔️            | World-controlled content layer                                                        |
| CVRContent5      | 20    | ✔️            | World-controlled content layer                                                        |
| CVRContent6      | 21    | ✔️            | World-controlled content layer                                                        |
| CVRContent7      | 22    | ✔️            | World-controlled content layer                                                        |
| CVRContent8      | 23    | ✔️            | World-controlled content layer                                                        |
| CVRContent9      | 24    | ✔️            | World-controlled content layer                                                        |
| CVRContent10     | 25    | ✔️            | World-controlled content layer                                                        |
| CVRContent11     | 26    | ✔️            | World-controlled content layer                                                        |
| CVRContent12     | 27    | ✔️            | World-controlled content layer                                                        |
| CVRContent13     | 28    | ✔️            | World-controlled content layer                                                        |
| CVRContent14     | 29    | ✔️            | World-controlled content layer                                                        |
| CVRContent15     | 30    | ✔️            | World-controlled content layer                                                        |
| CVRContent16     | 31    | ✔️            | World-controlled content layer                                                        |

Internal layers are reserved for ChilloutVRs own use and cannot be assigned to user objects.

### Static Members

#### Static  Methods

| Signature                              | Description                                             |
|----------------------------------------|---------------------------------------------------------|
| static bool IsInternalLayer(int value) | Returns true if the given layer is a CVR-reserved layer |