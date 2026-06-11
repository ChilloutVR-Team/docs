# CCK 3.6 Release Notes

We have released CCK 3.6 to our documentation page: https://docs.chilloutvr.net/cck/setup/

CCK 3.6 contains the following changes:

## Improved Animator Driver behavior:

If the animator driver is not in the main Avatar animator, it is considered a misc animator and is local only, the same as putting it in a world.

If a driver runs on a Spawnable, only the owner sets the spawnable value, remote users will still set an animator value.

If the local-only bool is checked, the driver will only run for the wearer of the avatar, or for the owner of the spawnable- remotes will not set an animator value.

## World Custom Collision:
You can now capture your world collision matrix to be applied in-game.

## New Layers:
The new CCK brings new Layers for prop makers.

Layer 6: PassPlayer
This Layer will Block Default but lets players through.

Layer 7: BlockPlayer
This Layer will Block Players but lets the Default Layer pass through.

In general, props will now be able to use the following layers:

0: Default
1: TransparentFX
2: Ignore Raycasts
4: Water
5: UI
6: PassPlayer
7: BlockPlayer
12: Camera Only

If a prop contains an object on a different layer, it will be moved to Default.

### General fixes and changes:

- Added PreWorldBundleEvent
- Added interactable editor for set component active action
- Added the option to capture a custom collision matrix when advanced settings are enabled for worlds
- Added the proper help URL to components where applicable
- Added local-only option to AnimatorDriver
- Added QOL options to AnimatorDriver to convert to opposite tasks
- Added better error handling during the bundling process
- Added a new search dropdown element to various parameter inputs
- Added set by distance to aas and spawnable triggers
- Added held/attached/controlled checks to parameter stream for props and worlds
- Added the ability for parameter stream spawnables can select a target between custom float and general animator
- Added support for more special characters in aas parameter machine name (.-_ /) this will update and can change your parameter paths when changing parameter names!
- Added upload image from files button to CCK upload screen
- Added Custom Popup to CVRFaceTracking GUI when viewing blend shapes
- Added new Utility Menu to all reorderable lists in CCK
- Added undo steps for the CVRAvatar Auto GUI buttons
- Added tamper check to detect if a third-party script removed the UploaderHead button events once entering play mode
- Added New menu item "Alpha Blend Interactive/Utilities/Hide Gizmo Icons"
  This will disable all CVR gizmo icons that appear in the scene view
- Added New menu item "Alpha Blend Interactive/Utilities/Reset Layer Names"
  This will forcefully reset all layer names, including custom content layer names!
- Added Upgrade Button to CVRMirror to quickly update older content
  The restriction on customizing the Player & UI layers for CVRMirror has been lifted, but to not break older content, the component must be "Upgraded" within the project
- Added new AdvancedDropdown to setting inputs of CVRAdvancedAvatarSettingsTriggerEditor
- Added undo step for autoselecting face tracking blend shapes
- Added Local Interaction toggle to CVRAdvancedAvatarSettingsTrigger
- Added custom skybox & color options to CVRMirror
- Added updateWithPhysics to CVRPickupObject option (default true)
- Added mirror functionality to the CCK component
- Added new VelocityInheritanceMode & OrientationMode options to Movement Parent
- Added warning to CVRMovementParent if a collider is not found
- Added OnPointerExit to the interactable Component
- Adjusted VR settings and rendering mode when bundling content
- Adjusted CVRWorld gizmos to only render in full while selected
- Adjusted CVRAssetInfo to be created after the dependent component
- Adjusted GetParameterSyncUsage so the current and new usage counts are separate, not additive
- Adjusted MultiUsageBar to display as red when a value is over the limit. Bigger value displayed first
- Adjusted Tag Manager rebuilding. It will only forcefully reset base game layers automatically
  Exception for when the content layer is a legacy layer name! (PostProcessing, CVRPickup, CVRInteractable, RCC_)

- Cleaned up AnimatorDriver GUI
- Cleaned up CVRDescription GUI
- Cleaned up and reworked CVRAvatar GUI
- Cleaned up CVRWorld editor GUI
- Cleaned up CVRMirror editor GUI
- Cleaned up CVRAdvancedAvatarSettingsTrigger GUI
- Cleaned up some longer display names in the CCK
- Cleanup CVRAudioDriver
- Cleanup CVRMaterialUpdater

- Corrected spelling mistakes in AAS bits usage bar

- Updated feedback platform URL in CCK control panel

- Fixed an issue related to instantiated & unpacked copy is now passed to PreBundleEvents instead of the original
- Fixed an issue related to Gameobjects tagged EditorOnly not being stripped on upload
- Fixed an issue related to the remove missing scripts button would not apply to prefab
- Fixed an issue related to not being able to unselect a target object when editing Texture Property Parser tasks
- Fixed an issue related to the sub-sync gizmo when no parent exists
- Fixed an issue related to CVRAssetInfo when resetting the component
- Fixed an issue related to the AAS bit usage calculation being wrong in some cases