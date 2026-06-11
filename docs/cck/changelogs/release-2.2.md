# CCK 2.2 Release Notes

Hi there,

we have an update of the ChilloutVR content creation kit for you!

The new CCK v2.2 contains the following changes:

- [Spawnables] Spawnable objects can now be uploaded
- [Interactables] Added new trigger Type OnCron
- [Interactables] Added new trigger type OnPointerEnter
- [Interactables] Added new Trigger txpe OnWorldTrigger
- [Interactions] Added the new component CVRPointer which acts as a pointer for AdvancedSettingsTrigger, ToggleStateTriggers, and the above-mentioned OnPointerEnter Event for interactables. This is meant to replace the existing separate Triggers, so please update your avatars accordingly.
- [Interactions] Having more than one trigger on the same Gameobject will now display an error, that will lead to unexpected behavior.
- [Advanced Avatars] The Advanced Avatar Trigger now has an Advanced Mode.
  In Advanced Mode you can specify:
    - multiple value changes
    - a delay on them
    - Have 2 List for value changes: one for onEnter and one for onExit
    - can define if network interaction should be allowed
    - define a specific list of pointer that can only interact with the trigger
    - Added an Update Method to the Value Operations, so you are also able to add and subtract values instead of only setting them
- [Advanced Avatars] The SettingName field is now a dropdown if and overwrite Controller is set on the Avatar
- [Advanced Avatars] Added foldouts to the Editor (Thanks to Tayou)
- [Advanced Avatars] Option to directly use an Animation clip for Toggles and Dropdowns (Thanks to Tayou)
- [Advanced Avatars] Added active state for dropdowns (Thanks to Tayou)
- [Advanced Avatars] Added Option to migrate overwrites from old overwrite controller
- [Advanced Avatars] Parameter name now shows the generated Parameter names more accurately
- [Advanced Avatars] Fixed a bug on Dropdowns where Gameobjects in multiple dropdowns states caused weird behavior in generation
- [Animations] Changed the default idle animation timescale to 1
- [Video Player] Reworked the Video Player for a future game update
- [Haptics] Added Haptics Zones that can trigger Avatar Haptic Components

> The Interactable OnPointerEnter and OnWorldTrigger, the advanced mode for AdvancedAvatarSettingsTrigger, Haptics Zones, the CVRPointer, the new configurable bounds for Advance Avatar Joysticks, and the ability to use spawnables in-game will come to the experimental in the near future.
