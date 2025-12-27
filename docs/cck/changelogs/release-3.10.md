# CCK 3.10 Release Notes

This new Content Creation Kit update brings many fixes and improvements, including a new Advanced Avatar Settings GUI, the initial Lua scripting implementation for testing branches, and more!

## Changelog:

- Added a toggle to the CVR Lua Client Behavior on the CCK to manage where the scripts should run:
- On Avatars: Whether the script only runs on the avatar's wearer client or not (should be toggled ON by default for freshly added CVR Lua Client Behavior)
- On Props: Whether the script only runs on prop spawner's client or not (should be toggled ON by default for freshly added CVR Lua Client Behavior)
- Adjusted CVRParameterStream Types dropdown to be categorized
- Adjusted the default blink gap to match the new game defaults
- Allow Parameter in an AAS Setting to be Different From the Setting Name
    - Remove Sanitization of Animator Parameters (or put on toggle)
    - Control of parameter names and values for Avatar Advanced Settings dropdowns
- Change Initial Type for Toggle and dropdown
    - Various AAS generator improvements
- Change layout of Advanced Settings section of CCK_CVRAvatarEditor
    - Visual decoupling of autogeneration & menu entries, to make it more obvious you can ignore them
- Fixed a typo in BoundObjects
- Fixed AAS animation override sometimes being missing
- Fixed AAS Create Controller button not recording to prefab instance
- Fixed AAS dropdown exceeds UI boundaries
- Fixed Eye Look and Eye Blink foldouts displaying an extra header
- Fixed LocSwimmingBackward CCK animation clip
    - Swimming backwards no longer rotates legs sideways
- Fixed multiple tag selection for advanced tagging
- Made Material Property Sliders min and max work
- Reworked AAS GUI internals to use Serialized Properties

⚠️ **__Note:__**
*While our Lua implementation is included in this CCK release, it is still a work in progress and not yet available in the Stable release of ChilloutVR. Please see our Scripting Nightly branch in <#853363076878696480> for more information.*