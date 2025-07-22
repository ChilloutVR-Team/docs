# CVR Canvas Wrapper <div class="whitelisted" data-list="WP"></div>

The `CVRCanvasWrapper` component handles setup and interaction logic for world-space canvases in ChilloutVR. 
You can add this component alongside a `Canvas` component to configure UI interaction properties.

If this component is not found alongside a `Canvas` on Prop/World load, one will automatically be added with the default settings.

---

## Fields

| Name                  | Type    | Description                                                                                                              |
|-----------------------|---------|--------------------------------------------------------------------------------------------------------------------------|
| `interactionDistance` | `float` | The maximum distance at which this canvas can be interacted with. This is measured from the hit point to the ray origin. |

---

## Properties

| Name             | Type     | Description                                              |
|------------------|----------|----------------------------------------------------------|
| `IsCanvasEnabled`| `bool`   | Indicates if the canvas is active and interactable.      |

---

## Methods

| Name                           | Description                                                                   |
|--------------------------------|-------------------------------------------------------------------------------|
| `UpdateColliderForRenderMode()`| Enables or disables the collider based on render mode and resizes if needed. Call this when switching between screen space and world space at runtime. |

---

!!! tip "Out of Bounds UI Elements"
    If your UI has elements which are not within the bounds of the `Canvas` width/height and you wish to make them interactable, you can add colliders to those elements manually.
    Otherwise, you should keep interactable elements within the bounds of your `Canvas`.

!!! tip "Disable Interaction"
    If you wish to disable interaction with your world-space UI, you can add this component alongside your canvas and disable it.

--- 

## Notes

- **Collider Setup:** This component ensures a `BoxCollider` is present and correctly sized around the world-space UI.