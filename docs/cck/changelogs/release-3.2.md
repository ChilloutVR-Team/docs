# CCK 3.2 Release Notes

!!! note
    This page was salvaged from a Discord embed in the announcements channel and may be incomplete.

This CCK update adds support for all Unity versions between 2019.4.36f1 and 2019.4.37f.

- New Component CVRGlobalMaterialPropertyUpdater: This component can update material properties globally
- New Component CVRAudioMaterialParser: This component allows you to pass Audio source properties and data to a material
- New Component CVRCustomRenderTextureUpdater: This component allows you to update a CustomRenderTexture without the need for an extra camera
- New Component CVRTexturePropertyParser: This component allows you to read color data from a texture and to set component properties accordingly
- New Component CVRSnappingPoint: This component allows the definition of snapping points for Pickup Objects
- New Component CVRDistanceConstraint: This component allows you to define a min and max distance, which is respected between two objects
- Added SetValue method to the CVRVariableBuffer component
- Added the option to sync global Textures to the CVRGlobalShaderUpdater component
- Added new Interactable Action SetPropertyByValue: This action allows you to set properties of other components by variable buffer values
- Added a MaximumGrabDistance option to the CVRPickupObject component
- Added SetNetworkSync and SetAudioMode methods to the CVRVideoPlayer
- Added SnappingReferences to the CVRPickupObject component