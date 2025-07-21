# First Person Render Exclusion <div class="whitelisted" data-list="A"></div>

When you are wearing a Humanoid avatar, ChilloutVR will automatically hide the head from first person view. This is to prevent the players view from being obstructed by the head when looking around.

This component allows you to take control of this behavior and show or hide entire chains of bones in first person. This is useful for things like helmets, hats, hair, or other elements that you want to keep visible or explicitly hide from the players view.

---

## Fields

| Name     | Type        | Description                                                                                                                                                                                                                     |
|----------|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Is Shown | `bool`      | Whether the bones are shown in first person or not. This field is animatable at runtime.<br/>If true, the bones will be shown in first person.<br/>If false, the bones will be hidden in first person.                          |
|          |             |                                                                                                                                                                                                                                 |
| Target   | `Transform` | The transform of the root of the bone chain you want to show or hide in first person. This can be any transform in the hierarchy of the avatar and will include all children until the next `FPR Exclusion` component is found. |
| Mode     | `bool`      | Controls hiding behavior: `Shrink` scales transforms to zero; `Cut` hides mesh vertices.                                                                                                                                        |

!!! hint
    The `Target` transform should be the root of the bone chain you want to show or hide in first person. 
    This can be any transform in the hierarchy of the avatar and will include all children until the next `FPR Exclusion` component is found.

---

## Automatic Head-Hiding
ChilloutVR will automatically add this component to the head bone of your avatar on avatar load if one is not already present. You may add this component to the head bone manually if you wish to control the behavior of the automatic head-hiding.

## In-Game Debugging
You can use the Portable Camera in-game to display the head-hiding behavior of your avatar.
This can be enabled by doing the following:

1. Open the Quick Menu or Main Menu.
2. Click on the `Portable Camera` button.
3. Click on the `Settings` button in the Portable Camera.
4. Enable `Expert Mode` towards the top of the Portable Camera settings.
5. Enable `Display FPR Exclusions` towards the bottom of the Portable Camera settings.
6. Ensure the camera is facing you. You should now see your avatar without the head visible.

---

!!! tip
    This component can also be used on Generic avatars.

!!! tip
    There is a legacy `[FPR]` string which can be added to the name of any GameObject with a Renderer component on it. 
    This will prevent the head-hiding system from acknowledging this render entirely.