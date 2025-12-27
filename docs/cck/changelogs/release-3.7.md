# CCK 3.7 Release Notes

This new Content Creation Kit update brings many improvements, including an introduction of the Buoyancy System, ForceApplicator Component, and much more!

**Starting with CCK 3.7 stable release, uploads using Unity 2019 will no longer be supported.**

## Changelog:

- Added support for PhysicsInfluencer
- Added support for FluidVolumes
- Added new ParameterStream inputs
    - TransformGlobalPositionX
    - TransformGlobalPositionY
    - TransformGlobalPositionZ
    - TransformGlobalRotationX
    - TransformGlobalRotationY
    - TransformGlobalRotationZ
    - TransformLocalPositionX
    - TransformLocalPositionY
    - TransformLocalPositionZ
    - TransformLocalRotationX
    - TransformLocalRotationY
    - TransformLocalRotationZ
    - InputCarSteering
    - InputCarAccelerate
    - InputCarBrake
    - InputCarHandbrake
    - InputCarBoost
    - InputMovementX
    - InputMovementY
    - InputLookX
    - InputLookY
    - InputJump
    - AvatarHeight
    - AvatarUpright
    - FluidVolumeSubmerged*
    - FluidVolumeDepth*
    - FluidVolumeTimeSinceEntered*
    - FluidVolumeTimeSinceExit*
      *(avatar or PhysicsInfluencer on the same GameObject)
- Split LocalPlayerControllerType into Left & Right for ParameterStream
- Placed all components in "ChilloutVR/" in Add Component menu
- Added a few missing HelpURL attributes to some CCK components
- Added 60 FPS limit while on the upload screen to prevent the needless usage of resources
- Changed CVRAdvancedAvatarSettingJoystick3D min/max range to Vector3
    - Ranges should now work, and Z now has a range that can be set
- Changed the default execution type for CVRInteractableAction to LocalNotNetworked
- Added Damage Falloff curve to the Damage component
- Added first swimming animations to the default Avatar Animator
- Added new ForceApplicator Component
- Added Mirror_Cutout shader, material, and prefab
- Adjusted CVRMirror GUI to display Setup Mirror button when added to empty gameobject
- Adjusted mirror prefabs to use layer CVRReserved2, to prevent reflecting each other
- Adjusted the Default Emote Animations to be more refined
    - Previous animations are in Legacy folder, postfixed with "_Legacy"
- Adjusted new world options
    - Added object gravity
    - Renamed gravity option to Player Gravity
    - Added allow extreme far clip plane
- Cleaned up CVRAudioDriver GUI
- Cleaned up CVRCameraHelper GUI
- Cleaned up CVRSpawnable GUI
- Cleaned up CVRVideoPlayer GUI
- Cleaned up CVRToggleStateTrigger GUI
- Cleaned up CVRAdvancedAvatarSettingsTriggerHelper GUI
- Fixed CVRAvatar GUI not using SerializedProperties
- Fixed mirrors modifying source material directly when rendering
- Fixed allowing you to remove the CVRAssetInfo script without the editor recreating it