# CCK 3.16.4 Release Notes
<sub>the cck release that almost never saw the light of day :D</sub>

This new Content Creation Kit update brings several goodies and __backported__ additions from CCK4.
Alongside this, we have updated our **recommended** Unity version to **2021.3.45f2**.

## Changelog:

- Added basic Local testing for Avatars & Worlds:
    - Building a Local Test will launch ChilloutVR if it is not running already through the `chilloutvr://test/` deep link
    - Testing a World will put you in an Offline instance
    - Testing an Avatar will only change your Avatar for yourself, not remote users
    - Testing Props is not yet supported due to dependencies on networking related code actively being touched for GS2
- Added better logging & error handling to the initial upload step
- Added more extensive error handling to the bundling process
- Removed legacy prefab building logic for Unity 2019
- Updated the Documentation & Feedback Board URLs to `chilloutvr.net`
- Updated the API Address used by CCK to `chilloutvr.net`
- Updated build panel splash to "ChilloutVR Content Creation Kit"
- Fixed several Unity version checks hardcoded to look for "2021" in `Application.unityVersion`
- Tweaked the Build Panel to be less bad
    - This is not the pretty panel for CCK4, just made it workable cause it pissed me off
- Added CVRInputFieldKeyboardHandler component
    - This component lets you override the built-in keyboard display behaviour when clicking a Unity UI/TMP input field
- Added the following CVRInteractable trigger types:
    - `OnUnityUIPointerEnter`
    - `OnUnityUIPointerExit`
    - `OnUnityUIPointerDown`
    - `OnUnityUIPointerUp`
    - This is the supported method to receive Unity UI interaction events with CVRInteractable. The old setup using the OnInteract triggers on Unity UI no longer works with the new Unity UI interaction, so the interactable is versioned and will offer an autofix to migrate your setup for you. If you choose not to autofix your existing setup will still work fine, as the client also does this same migration logic for you.
- Fixed CVRLuaClientBehaviour not inheriting ICCK_Component
- Fixed the Open Documentation button in the CVRLuaScript GUI not opening the lua docs
- Changed Alpha Blend Interactive toolbar and dialog titles to ChilloutVR
- Changed Alpha Blend Interactive mentions in all locale files to ChilloutVR
- Removed Module Workshop toolbar option
- Backported all additions to CVRParameterStream from CCK4:
    - Game Focused
    - Time Since Game Unfocused
    - TimeSinceAFK
    - IsPublicInstance
    - IsPrivateInstance
    - IsGroupInstance
    - Added the missing IsMenuOpen tooltips to CVRParameterStream, which fixed a GUI bug
- Backported all additions to CVRInteractable from CCK4:
    - Added Display Group Details Page operation
    - Removed Display Instance Details Page operation

**Addresses Feedback Posts:**

- Partially [Local-testing for Avatars, Props, and Worlds](<https://github.com/Alpha-Blend-Interactive/ChilloutVR/issues/181>)
- [Lua Behaviour is not inheriting off of ICCKComponent](<https://github.com/Alpha-Blend-Interactive/ChilloutVR/issues/1454>)
- [Open Documentation button in LuaScriptImporterGUI links to example.com](<https://github.com/Alpha-Blend-Interactive/ChilloutVR/issues/1574>)