# CVR Distance Constrain <div class="whitelisted" data-list="AWP"></div>

Constrains the position of an object relative to a target transform within a minimum and maximum distance range.

---

## Fields

| Name          | Type       | Description                                                   |
|---------------|------------|---------------------------------------------------------------|
| `target`      | `Transform`| The target transform to measure distance from.                |
| `minDistance` | `float`    | The minimum distance the object must stay from the target.    |
| `maxDistance` | `float`    | The maximum distance the object can be from the target.       |

---

!!! warning "Usage with Physics"
    This component will not work well with objects with rigidbodies or other physics components.
    It is designed for use with objects that are moved via scripts or animations.

---

## Notes

- If both `minDistance` and `maxDistance` are `0`, the object is left unconstrained.
- `Gizmos` are drawn in the Scene View to visualize the constrained range when selected.
- Distance constraints are applied during `Update` & `LateUpdate`.