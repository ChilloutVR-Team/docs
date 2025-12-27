# CCK 3.9 Release Notes

This new Content Creation Kit update brings many improvements, including a refactored eye movement controller, velocity preservation, a new method of player detection in worlds, and more!

## Changelog:

- Added `OnBecameVisible` and `OnBecameInvisible` trigger types to CVRInteractable
- Added `OnPlayerTriggerEnter`, `OnPlayerTriggerExit`, `OnPlayerColliderEnter`, and `OnPlayerColliderExit` CVRInteractable actions
- Fixed AnimatorDrivers not rounding to int properly
- Implemented preserve velocity option to `CVRInteractable.TeleportPlayer` action
- Renamed `OnGazeEnter` and `OnGazeExit` to `OnHover` to better reflect their actual implementations
- Refactor the eye movement serializable info
    - New features (requires the new CCK 3.9 Preview build 107 or higher):
        - Ability to set the interval range in seconds of how often the avatar switches eye look target (animatable)
        - Ability to set the interval range in seconds how often the avatar blinks (animatable)
        - Ability to set the duration range for blinking in seconds (animatable)
        - Added new eye look setup types.
    - Eye Movement Setup Types:
        - `Muscles` (default and legacy behavior) - Uses the eye transforms defined in the unity humanoid rig, and respects the muscle limits set.
        - `None` - Disables completely the eye movement on the avatar.
        - `Transforms` - Allows to multiple add eyes, requiring a transform and the limits configuration. This can be applied to any transform within the avatar.
        - `Blendshapes` - Allows to add multiple eyes, requiring to add a transform (for the eye position), and a skinned mesh renderer that has the blendshapes to be used. Then it requires the rotation limits, and the blendshapes to be used for up/down/right/left.