# CVR Camera Helper <div class="whitelisted" data-list="WP"></div>

The `CVRCameraHelper` component allows you to take screenshots or render a camera with optional replacement shaders.

---

## Fields

| Name                  | Type            | Description                                                                 |
|-----------------------|-----------------|-----------------------------------------------------------------------------|
| `cam`                 | `Camera`        | The target camera used for rendering and screenshots.                      |
| `replacementShaders`  | `List<Shader>`  | A list of optional shaders to override the camera's rendering.             |
| `selectedShader`      | `int`           | Index into the `replacementShaders` list for the active override.         |

---

## Methods

| Name                    | Description                                                                            |
|-------------------------|----------------------------------------------------------------------------------------|
| `TakeScreenshot()`      | Captures a screenshot from `cam` and stores it in the users screenshots folder. |

!!! info "Usage"
    The `TakeScreenshot()` method requires a `CVRPickupObject` either on the same GameObject or in a parent. The screenshot will only trigger if the object is currently grabbed by the local user.

---

## Notes

- **Cooldown:** Screenshots are rate-limited to one per second.
- **Shader Override:** If `selectedShader` is set and valid, it replaces the camera's shader; otherwise, the camera uses its default.