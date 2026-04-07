# Auto-Generated Avatar Pointers

Auto-Generated Pointers are special CVR Pointer components that are automatically created by the game for various body parts on your avatar. These pointers are always available and can be used to interact with the world or other players without needing to manually add them to your avatar.

---

## Body Part Pointers

The following pointers are automatically generated based on your avatar's humanoid bone structure:

| Pointer Name | Description |
|--------------|-------------|
| `Head`       | Located at the avatar's head bone. |
| `Torso`      | Located at the avatar's chest/spine area. |
| `LeftHand`   | Located at the left hand. |
| `RightHand`  | Located at the right hand. |
| `Hand`       | Applied to both left and right hands. |
| `LeftFoot`   | Located at the left foot. |
| `RightFoot`  | Located at the right foot. |
| `Foot`       | Applied to both left and right feet. |
| `Mouth`      | Located at the voice emission point (usually the jaw/mouth area). |
| `Grab`       | Active on the hand that is currently grabbing an object. |

---

## Finger Pointers

Individual fingers also have auto-generated pointers for precise interactions:

| Bone Name | Pointer Names |
|-----------|---------------|
| Index     | `Finger`, `LeftIndex` / `RightIndex` |
| Middle    | `Finger`, `LeftMiddle` / `RightMiddle` |
| Ring      | `Finger`, `LeftRing` / `RightRing` |
| Little    | `Finger`, `LeftLittle` / `RightLittle` |

---

## Legacy Pointers

The following pointers are maintained for backwards compatibility with older content:

- `Hand`
- `Foot`
- `Finger`

---

## Notes

- Pointers are **case-sensitive**.
- These pointers are only generated for avatars with a **Humanoid** rig.
- They are typically used with CVR Trigger and CVR Interactable components to detect collisions and interactions.
