# CCK 3.8 Release Notes

This new Content Creation Kit update includes many improvements, including an introduction of the Gravity System, BodyControl StateBehaviour, FPRExclusion component, and much more!

## Changelog:

- Added Body Control State Behaviour
- Added help message to CVRMirror when set to reflect Camera Only layer
- This does not prevent you from reflecting this layer if you so choose
- Added CVRBlitter implementation to CCK for testing in-editor
- Added Gravity options to PhysicsInfluencer
- Added GravityZone component
- Added method calls to update movement settings on CVRWorld
- SetBaseMovementSpeed (float)
- SetSprintMultiplier (float)
- SetStrafeMultiplier (float)
- SetCrouchMultiplier (float)
- SetProneMultiplier (float)
- SetFlyMultiplier (float)
- SetInAirMovementMultiplier (float)
- SetJumpHeight (float)
- SetAirFriction (float)
- SetGravity (float)
- SetObjectGravity (float)
- SetPlayerGravityAlignmentMode(int)
- Auto = 0
- Disabled = 1
- Instantly = 2
- Custom = 3
- SetPlayerGravityCustomAlignmentValue(float)
- ApplyMovementSettings() -> Applies the current CVRWorld configuration to the controller
- You only need to call this if animating the values with an animator
- Added new alignment options to CVRInteractable TeleportPlayer action
- World Up,  Target Up, Gravity, None
- Added new FPRExclusion CCK component
- Added Refresh CCK debugging option - `Alpha Blend Interactive/Utilities/Refresh CCK`
- Added "Relative Teleport" option to CVRInteractable TeleportPlayer action
- Adjusted CVRInteractable dropdowns to filter disallowed actions when used on props
- Adjusted TeleportPlayer/Spawn/SitAtPosition arrow gizmos to visualize new alignment options
- Changed VelocityInheritanceMode.Reference to the default option on Movement Parent
- Older content prior to this option implementation default to VelocityInheritanceMode.Parent as it is legacy behavior
- Cleaned up CVRParameterStream editor GUI
- Exposed Application Type to World & Spawnable streams
- Exposed Animator target type to Avatar streams
- Adjusted update mode options to display as flags field
- Changed Stream Input dropdown a searchable dropdown
- Cleaned up original CVRAnimatorDriver editor GUI
- Adjusted parameter dropdown to use searchable dropdown
- Exposed player Air Friction & Align with Gravity movement configurations on CVRWorld
- Fixed adding new entries on CVRSpawnable defaulting to invalid (empty) values
- Fixed Advanced Avatar Tagging GUI not using SerializedProperties
- Fixed ClipboardUtils paste not creating a new instance of the source item
- Fixed illegal characters in machine name breaking autogeneration when generating a file name
- Fixed "This layer does not exist and will not be regenerated" warning being incorrectly displayed
- Renamed SpawnRule.InOrder to SpawnRule.Sequential
- Removed `.` from allowed machine name characters, as it breaks state machines