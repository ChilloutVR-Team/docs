# Auto-Generated Avatar Pointers

Auto-Generated Pointers are special [CVR Pointer](../components/cvr-pointer.md) components that are automatically created by the game for various body parts on your avatar. These pointers are always available and can be used to interact with the world or other players without needing to manually add them to your avatar.

---

## Default Pointer Types

The following pointers are automatically generated based on your avatar's humanoid bone structure:

### Body & Voice
| Pointer Name | Description |
|--------------|-------------|
| `Head`       | Located at the avatar's head bone. |
| `Torso`      | Located at the avatar's chest/spine area. |
| `Mouth`      | Located at the voice emission point (usually the jaw/mouth area). |

### Hands & Interaction
| Pointer Name | Description |
|--------------|-------------|
| `Hand`       | Applied to both left and right hands. |
| `LeftHand`   | Located at the left hand. |
| `RightHand`  | Located at the right hand. |
| `Grab`       | Active on the hand that is currently grabbing an object. |

### Feet
| Pointer Name | Description |
|--------------|-------------|
| `Foot`       | Applied to both left and right feet. |
| `LeftFoot`   | Located at the left foot. |
| `RightFoot`  | Located at the right foot. |

### Fingers
| Pointer Name | Description |
|--------------|-------------|
| `Finger`     | Applied to all fingers on both hands. |
| `Index`      | Applied to both left and right index fingers. |
| `LeftIndex`  | Located at the left index finger. |
| `RightIndex` | Located at the right index finger. |
| `LeftMiddle` | Located at the left middle finger. |
| `RightMiddle`| Located at the right middle finger. |
| `LeftRing`   | Located at the left ring finger. |
| `RightRing`  | Located at the right ring finger. |
| `LeftLittle` | Located at the left little finger. |
| `RightLittle`| Located at the right little finger. |

---

## Legacy Pointers

The following pointers are maintained for backwards compatibility with older content:

- `mouth`
- `index`
- `grab`

---

## Notes

- Pointers are **case-sensitive**.
- These pointers are only generated for avatars with a **Humanoid** rig.
- They are typically used with [CVR Advanced Avatar Settings Trigger](../components/cvr-advanced-avatar-settings-trigger.md) and [CVR Interactable](../components/cvr-interactable.md) components to detect collisions and interactions.
