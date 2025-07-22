# CVR Blitter <div class="whitelisted" data-list="AWP"></div>

The `CVRBlitter` component executes Unity’s [`Graphics.Blit`](https://docs.unity3d.com/ScriptReference/Graphics.Blit.html) with optional material overrides, automatic output clearing, and random write target bindings.

---

## Fields

| Name                | Type                   | Description                                                                 |
|---------------------|------------------------|-----------------------------------------------------------------------------|
| `originTexture`     | `RenderTexture`        | The input texture used as the source for the blit.                         |
| `destinationTexture`| `RenderTexture`        | The output texture that will receive the blit result.                      |
| `blitMaterial`      | `Material`             | The material applied during the blit operation.                            |
| `clearEveryFrame`   | `bool`                 | If enabled, clears the destination texture each frame before blitting.     |
| `renderTextures`    | `List<RenderTexture>`  | Optional list of render textures to bind as random write targets.          |
| `index`             | `short[8]`             | Binding indices for each random write target.                              |

---

!!! tip "Blitter Controllers"
    Use a [CVRBlitterController](cvr-blitter-controller.md) component to control execution order of multiple `CVRBlitter` instances. 
    When a blitter is referenced by a controller, it disables its own automatic updates and is triggered only by the controller in the defined order.

---

## Notes
- **Execution:** This component executes in the OnPreRender event of the local player camera.