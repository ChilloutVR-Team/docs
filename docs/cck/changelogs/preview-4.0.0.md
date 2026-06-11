# CCK 4.0.0 Preview Release Notes

!!! info
    Consolidation of all changes from CCK 3x for all CCK 4.0.0 previews up until preview 22. Final changelog pending full release.

New Control Panel, Build Pipeline, and Localization System.

## Changelog:

- Introducing a brand new Control Panel:
    - Language selection is now always available in the header alongside CCK version
    - Community Hub Tab
        - Profile selector (up to 8)
        - Content upload statistics
        - Useful links to docs, feedback, and hub
    - Content Builder Tab
        - The upload process has been reduced to 2 upfront clicks without needing to enter playmode
        - You can now see the currently uploaded thumbnail in the build panel prior to setting a new one
        - You can now reliably mix all content types in the scene including multiple CVRWorlds
        - New utility dropdown to ping object in scene, copy/clear selected contents guid, open selected content on Hub in web browser or in Client via deeplinks
        - New Last Build Info element which is shown after first build with useful info
        - Validations now only run once on initial select instead of every draw of the GUI
    - Content Browser Tab
        - Quickly browse though all your uploaded content sorted by type, age, or search term
        - Ability to open content on Hub in web browser, on Client via deeplinks, or copy guid to clipboard
    - Settings Tab
        - Option to play a sound on upload complete
- Added & tweaked several content validations:
    - Added a warning when a camera is found without a target texture
    - Added a info text for when a potential 'depth light' is found
    - Added warnings for Loud Audio and Long Range Audio
    - Added a warning if a world defines spawn points which are out of bounds
    - Added a warning when shaders are found that *potentially* do not support SPI
    - Fixed the streaming mipmaps validation not running in Worlds
    - Fixed the streaming mipmaps validation autofix reimporting all textures sequentially
- Reworked localization system:
    - The CCK now retrieves localized strings from all CCKLocale resources in the project instead of hardcoding every string into big dictionaries
        - This allows anyone to easily make their own locale and redistribute it without modifying the CCK
    - The CCKLocale asset defines the identifier and references a json text asset with all localized strings
    - Tooltips can also be added to any localized field by postfixing their key with -TOOLTIP
- General changes:
    - The playerloop is now restructured the same as the client once entering playmode to make testing of constraints, ik, and dynbone/magica cloth more accurate
    - CVRDescription is now no longer included in built asset bundles as it is editor only
    - Upload is now rejected if the built bundle exceeds the upload limits
    - Moved CCK from ABI.CCK to CVR.CCK
- Ran the following component GUIs through the localization system:
    - ControlPanel tabs, CCK_CVRMirrorEditor, CCK_BodyControlEditor, CCK_CVRAdvancedAvatarSettingsTriggerEditor, CCK_CVRAnimatorDriverEditor, CCK_CVRAttachmentEditor, CCK_CVRAudioDriverEditor, CCK_CVRAvatarEditor, CCK_CVRAvatarPickupMarkerEditor, CCK_CVRLuaClientBehaviourEditor, CCK_CVRBlitterEditor, CCK_CVRCameraHelperEditor, CCK_CVRCanvasWrapperEditor, CCK_CVRFluidVolumeEditor, CCK_CVRInputFieldKeyboardHandlerEditor, CCK_CVRInteractableEditor, CCK_CVRLTCGIAdapterEditor, CCK_CVRMovementParentEditor, CCK_CVRParameterStreamEditor, CCK_CVRPickupObject, CCK_CVRSpawnableEditor, CCK_CVRToggleStateTriggerEditor, CCK_CVRWheelHubControllerEditor, CCK_GravityZoneEditor, The rest of the missing validation messages (LoudAudio, LongRangeAudio, PotentiallyNonSpi, ect)
- The localization system now pulls the English strings as a fallback when localized strings are not available
    - Any component guis which are partially localized will warn of this, and this warning is togglable in the CCK settings
- Hardcoded the legal assurance texts into the UXML
- Completely rebuilt the content validations:
    - The validation pipeline is no longer hardcoded for specific components, instead it now scans everything dynamically, including into prefabs and any other referenced objects found
    - This required time slicing due to the extra work required- so now there is a progress bar displayed when validating
    - Added a new detailed validations GUI element which displays the hierarchy of offending components
        - This allows you to quickly find the offending and inheriting assets flagged by the content validator
    - Hooked up the validator to run on build after all processors
        - The build panel warns you of this if validation errors are present when clicking build
- Added back the validation messages for triangle count, material slot count, and renderer count
- Added autotagging of Loud Audio and Long Range Audio
- Removed fov adjustment from CVRWorld as FOV is now a user configurable setting
- Experiment: Added an option to build the selected content with all build processors when entering playmode
    - This requires selecting the GameObject with the content descriptor on it prior to entering playmode
    - Build processors can ignore this by checking for `BuildReason.PlayMode`
        - The legacy build events processor will not run when entering playmode for example, as it is used by tooling like Poiyomi & Liltoon for shader locking
    - For worlds this will only function if it is the only content selected
    - This also requires the projects editor playmode options to be set to only reload scene atm
- Added a new validation for unsupported streaming mipmap usages
    - When the CCK runs into texture usages on components that do not properly function with streaming mipmaps, like particle systems, the CCK will now warn you and provide an autofix
- Removed the Renderer count validation suggestion messages outright
- Split the large texture validation from the streaming mipmaps one
- Tweaked the Material Slot count validation thresholds before the suggestion messages appear:
    - 10 info -> 15 info
    - 20 warning -> 30 warning
- Tweaked the Triangle count validation thresholds before the suggestion messages appear:
    - 50k info -> 100k info
    - 100k warning -> 200k warning
- Added a Refetch Content Details menu item to the content selection utility dropdown
- The CCK image cache is now stored in `appdata/local/chilloutvr` so it can be shared among all projects
    - Importing will automatically clean up the old image cache directory if found
- Reworked the experimental PlayModeBuilder:
    - It is now accessed via a menu item within the utility dropdown on the content selection region of the builder tab
        - This makes using this functionality much more intuitive than the prior implementation
- Added the following to CVRParameterStream:
    - `General/Game Focused`
        - Checks if the game window is focused (1:Yes, 0:No)
    - `General/Time Since Game Unfocused`
        - The time in seconds since the game window became unfocused
- Added the missing IsMenuOpen tooltips to CVRParameterStream, which fixed a GUI bug
- Removed the BundleCacheManager, built asset bundles are now stored in unitys temp folder and deleted after upload or on next local test
    - Captured pano image and active thumbnail are also now stored in this session temp folder
- Adjusted all HelpUrls to be consistent with the base url defined in one spot
- Adjusted all HelpUrls to point at `docs.chilloutvr.net`
- Added several missing `AddComponentMenu` & `HelpUrl` attributes on CCK components
- Changed all instances of `AddComponentMenu("")` to `AddComponentMenu("/")` to be future-proofed
- Deleted empty CVRVideoPlayerPlaylistEntity.cs
- The Builder tab now displays a proper error when the target content is not owned by the currently authenticated account or does not exist instead of freaking out
- Updated the local core parameters defined in the CCK, as it was missing several new additions
- The Browser tab now clears its state when the logged in account changes
- All validation results now link to the section on the docs that explains them
- Added back the following root validation steps:
    - Avatar considered short/huge
    - Missing or generic animator
    - Spawnpoints out of bounds
- Adjusted validation results to be sorted by severity
- Added experimental texture VRAM usage step (this is still incomplete & does not have context for content type)
    - All this currently does is calculate VRAM usage of all textures & complains with warnings, this is not an upload blocker
- Long Range Audio validation step is no longer run for Worlds as the associated content tag never applied to Worlds
- Added `Strict Collision` option to Gravity Zone
    - Enable this to use a stricter/smaller collision shape for player gravity. Useful for large, smooth surface transitions.
- Added `Unified Expressions` mode to CVRFaceTracking component
- Added a warning on the old FaceTrackingUtilities window warning about it not supporting UE
- Reworked the CVRFaceTrackingEditor GUI to use serialize properties, so now it actually functions with undo/redo
- Added the following input types to CVRParameterStream:
    - TimeSinceAFK
    - IsPublicInstance
    - IsPrivateInstance
    - IsGroupInstance
- Added DisplayGroupDetailPage to CVRInteractable
- Added portal panoramic preview to build panel
- Added validation step for non-assigned or conflicting network ids with autofix
- Adjusted the missing references in animation clip validation to only be a warning
- Exposed the NetworkID on `CVRObjectSync` & `CVRInteractableAction`, and `CVRVideoPlayer` GUIs
- Changed api address to new `chilloutvr` domain
- Reworked portal capture to capture new depth portal panoramics
- VRAM usage validation is now skipped for Worlds
- Refactored test mode so it can process content before monobehaviour lifetime events
- Fixed error in ltcgi adapter when using latest version of LTCGI
- The legacy build panel has been removed due to breaking changes in how the upload procedure works
- Tweaks to the upload procedure:
    - Now displays individual server-side processing status for specific files
    - Now uses a new upload endpoint which allows for variable updating (can do partial uploads in future)
- UnityHierarchyExpansionMemory wired up to keep expanded state and selection when entering/exiting test mode / after world upload
- Added validation for lights which affect only one player layer
    - If a light is detected which only affects Player Network or Player Local without affecting the other player layer an info validation will be displayed
- Added broken monobehaviour validation step with an autofix
    - If a monobehaviour is detected which is somehow unlinked from its monoscript asset a warning will be displayed and an autofix will be provided
    - Getting a monobehaviour in your scene into this state can sometimes occur when renaming a script which is already being used in scene
- Added CVR Material Data Provider
- Added CVR Render Controller
- Updated CVR Blitter to add support for multiple RenderTargets
- Removed UAV Binding from Blitter, this should now be done using the CVR Material Data Provider component instead
- Set default Video Player volume to 50%
- Fixed cvr animator driver not working in game
- Updated Newtonsoft.Json to latest
- Added spawn radius to CVRWorld
- Added validation for Editor Serialization Mode
    - You must have Force Text serialization mode to build Worlds due to lack of Unity APIs :(
    - An error and accompanying autofix will display in the build panel if your project is not configured properly
- Added `ChatBox/IsTyping` to CVRParameterStream
    - Whether the local player is typing in ChatBox or not (1:Yes, 0:No)
- Advanced tagged Loud Audio and Long Range Audio objects on Avatars are no longer considered for force tagging
- Added a validation for animation clips with missing targets or object references
- Added validation for readable textures on Avatars & Props
- Added validation for non-zero streaming mipmap priority on Avatars & Props

**Addressed Feedback:**

- [Ditch using Play Mode for Uploading Content in Unity](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1184)
- [Account Switcher in CCK](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1000)
- [CVRVideoPlayerPlaylistEntity inconsistently defined](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1014)
- [Set default Video Player volume to 50%](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/602)
- [Animator driver, parameter not being driven](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1897)
- [Make Browser Choose a Default Category to show](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833#issuecomment-3085837993)
- [Animations with missing References causes build Validations to Fail](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833#issuecomment-3254479336)
- [Uploading with the new CCK 4.0 panel breaks the world lighting](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833#issuecomment-3263947158)
- [Encountered this error while importing LTCGI](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833#issuecomment-3273015564)
- [The pano appears to capture the scene with real time lighting despite baked lights](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833#issuecomment-3475809612)
- [CCK prevents Unity from going to iOS Build, interfering with other SDKs](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833#issuecomment-3902266166)

## Please note that this is not yet set in stone and may change during the preview releases.

### Scripting Symbol

- `CVR_CCK_4_OR_NEWER` is defined alongside `CVR_CCK_EXISTS` in this new release

### New Build Pipeline API

- **ContentBuilderAPI**: New public API for building and uploading CCK content
    - Async/await support with proper cancellation handling
    - Detailed build status & progress reporting via events
    - Example usage:
```csharp
        await ContentBuilderAPI.BuildAndUpload(
            assetInfo,
            buildConfig,
            uploadInfo,
            legalAssurance,
            cancellationToken
        );
```

### New Build Processor System

- **CCKBuildProcessor**: Base class for creating build-time content processors
    - Validation and processing hooks for avatars, worlds, and spawnables
    - Ordered execution via `CallbackOrder` property
    - Protected access to build context (root object, asset info, etc)
    - Built-in helper methods like `GetAllComponents<T>()` to find components
    - Build purpose checking to conditionally run processors
    - Example implementation:
```csharp
        public class MyBuildProcessor : CCKBuildProcessor 
        {
            public override int CallbackOrder => 100;
            
            public override void OnPreProcessAvatar(GameObject avatar)
            {
                // Only run for online publishing
                if (BuildPurpose != BuildPurpose.OnlinePublish)
                    return;
                    
                // Easy access to all components of a type
                foreach (var component in GetAllComponents())
                {
                    // Processing logic here
                }
            }
        }
```

- **ICCKEditorOnly**: New interface to mark components for removal during build
    - Simply implement this interface on any component that should be editor-only
    - These components will be automatically stripped during the build process
    - Example usage:
```csharp
        public class MyEditorTool : MonoBehaviour, ICCKEditorOnly 
        {
            // Component will be removed during build
        }
```

### Build Processor Configuration

- New JSON configuration system for build processors
- Located at `ProjectSettings/CCK/build_processor_settings.json`
- Allows enabling/disabling processors without uninstalling
- Example configuration:
```json
    {
      "ProcessorSettings": {
        "ABI.CCKEditor.ContentBuilder.Processors.CaptureWorldPanoramic": {
          "IsEnabled": true,
          "CustomOrder": 10000
        }
      }
    }
```

!!! note
    May be exposed in Control Panel's settings tab in a future update

### Legacy Compatibility

- Legacy build events are still fired to maintain compatibility with existing tools (Callback order -1)
    - Ex: [Poiyomi](https://github.com/poiyomi/PoiyomiToonShader/blob/52b73edcb11d194ae68084da06a2833248326237/_PoiyomiShaders/Scripts/ThryEditor/External/Editor/AbiAutoAnchor.cs#L14), [Liltoon](https://github.com/lilxyzw/lilToon/blob/e0b739549b87263c007915bc200e0837fa156445/Assets/lilToon/External/Editor/ChilloutVRModule.cs#L20-L27), & [Zettais BakeBlenshapes Tool](https://github.com/ZettaiVR/UnityTools/blob/418e9834c939a0743cbb6eb6a9babd3e39fba63a/BakeBlendshapes/Editor/BakeBlendshapesBuildIntegration.cs#L270-L271)
- However, scripts relying on PlayMode state changes for cleanup may need updates
    - Ex: [UnusedBoneRefCleaner](https://github.com/NotAKidoS/UnusedBoneRefCleaner/blob/f62b1205e51b26de6a794eb094926fc15358f8e4/Editor/CCK_UnusedBoneRefCleaner_BuildHook.cs#L34-L42) & [Zettais RemoveUnneededBones Tool](https://github.com/ZettaiVR/UnityTools/blob/418e9834c939a0743cbb6eb6a9babd3e39fba63a/RemoveUnneededBones/Editor/RemoveUnneededBonesEditor.cs#L123)
- **World building now uses a duplicate scene for non-destructive preprocessing**
    - Ex: Fixes [CVRLuaTools](https://github.com/NotAKidoS/CVRLuaTools/blob/e266cdb1cbc25026478e67bbaf7a4d975926457e/Editor/CCKBuildEventListener.cs#L27-L36) not being able to destroy wrapper components on world build without modifying the source scene
    - Updated: [CVRLuaTools CCKBuildEventListener.cs](https://github.com/NotAKidoS/CVRLuaTools/blob/322bacef0fa848e49a2053c283bae22a49f6115e/Editor/CCKBuildEventListener.cs#L10-L24)

!!! info
    We do not plan to remove these old build events anytime soon, if ever, but we recommend using the new build processors if able. We know some thirdparty packages are only able to hook the CCK via reflection right now & we do plan on solving that in the future.

### Migration Guide

Tools should be updated to use CCKBuildProcessor for better reliability and features:
```csharp
// Old
public class OldBuildHook
{
    [InitializeOnLoadMethod]
    static void Init() 
    {
        CCK_BuildUtility.OnPreBuildAvatar.AddListener(OnPreBuild);
    }
    
    static void OnPreBuild(GameObject obj) 
    {
        // Logic
    }
}

// New
public class NewBuildProcessor : CCKBuildProcessor
{
    public override void OnPreProcessAvatar(GameObject avatar)
    {
        // Only run for online publishing
        if (BuildPurpose != BuildPurpose.OnlinePublish)
            return;
            
        // Easy component access no matter if is Avatar, Prop, or World
        foreach (var component in GetAllComponents())
        {
            // Logic
        }
    }
}
```

!!! danger ":catFire: :catFire: :shiggsplosions: **NOTE-README-OR-EXPLODE:** :shiggsplosions: :catFire:  :catFire: "
    You must remove `ABI.CCK`, `ABI.MODS`, `ABI.QA`, and `CVR.CCK` folders from `Assets/` before importing.
    This is especially required between preview releases. Things are constantly changing.

    Back up your project before importing. Report any issues to the
    [CCK 4 Megathread](https://github.com/ChilloutVR-Team/ChilloutVR-Issues/issues/1833) on our issue tracker.