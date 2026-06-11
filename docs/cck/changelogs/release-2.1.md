# CCK 2.1 Release Notes

we have just released ChilloutVR CCK 2.1 which now allows you to configure advanced avatar settings for your avatar.
Our backend systems are still migrating and uploading will be available in just a few hours, meanwhile please have a look on the new avatar advanced settings and the CCK changelogs.

ATTENTION: CCK 2.1 is compatible with both Unity 2019.3.1f1 as well as 2019.4.13f1 - For all of those who have problems with 2019.3, we suggest upgrading to 2019.4.13f1 (links on the cck download page, and yes that version contains free dark mode!)

## New Features

- Added Avatar Advanced Settings to CVR Avatar script with following input types:
    - GameObject toggle
    - GameObject dropdown
    - Material Color
    - Slider
    - Joystick 2D
    - Joystick 3D
    - Input Single
    - Input Vector2
    - Input Vector3
- Added new Component AdvancedAvatarTrigger
- Added new Component AdvancedAvatarPointer
- Added new Component HapticsChestArea
- Implemented multi-region upload services. You can choose another upload region in the Settings menu of the Build Manager Window.

## Changes

- Duplicate GUID prevention for CVR Interactable and CVR Pickup Object
- Simplified Object Sync Component