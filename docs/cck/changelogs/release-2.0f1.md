# CCK 2.0 Release Notes

We have just released ChilloutVR CCK 2.0f1.

## New Features

- Added options to CVRVideoPlayer
    - You can now build your own UI by using the CVRVideoPlayers public functions
    - You can now enable or disable the default interactive library of the video player (defaults on) - useful if you want to build a custom UI
    - You can now set a projection mesh for the video player
    - You can now set thumbnail images for every video
    - You can now enable / disable auto-play (defaults off)
    - Added default prefab: CVRVideoPlayerCinemaScreen
- Added file size info to the upload runtime. (blue i at the right top)
- Added warnings if the avatar does not match humanoid configuration
- Added warnings if the avatar animator does not have the avatar slot filled
- Shaders with transparency / fade option will now render correctly within the preview image of the shot cam
- The voice and view gizmos can now be moved in the scene and have text indicators
- Avatars will now be cloned and then unpacked for building instead of unpacking the source avatar - this means your prefab instances will no longer break

## Changes

- Fixed a bug that would cause the build panel to fail rendering when a mesh on an avatar is not assigned
- Fixed a bug that would cause the bundle builder to fail and upload incorrect asset files when a mesh on an avatar is not assigned
- Fixed a bug that would cause the CCK to upload no data when an asset file can not be read
- Fixed a bug where not providing data to necessary input fields would not upload anything but still go to the uploader screen
- Fixed a bug where uploading an avatar after uploading a world would always fail
- Adjusted caching path to use the persistent data path to prevent folder length / naming problems