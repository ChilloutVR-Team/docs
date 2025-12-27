# Content Creation Kit 1.16

!!! note
    This page was adapted from a snapshot from archive.org and may be incomplete. [View on archive.org.](https://web.archive.org/web/20210725223359/https://docs.abinteractive.net/cck-changelogs/content-creation-kit-1.16)

These are the release notes for ABI CCK 1.16 RELEASE Build number 44.

## Introduction

This version of our CCK contains new components and component changes as well as security improvements. Some tasks are no longer handled on client side. The error handling has also been improved and proper error hints are now shown.

!!! warning
    With the rollout of 1.16 all previous versions of our content creation kit are incompatible. You are REQUIRED to update if you want to upload content at this point.

### New features

- Proper override controllers can now be created using the Asset -> Create context menu.
- Voice Parent can now be set in CVR Avatar. This can be used to bind the voice position to other bones like right hand or left hand.
- CVR Interactable:
    - All Interactables can now be timed with a delay parameter.
    - Trigger OnTimer can now be set to "once on enable", "repeat" and "deactivate self"
    - Added Action Toggle Animator Bool Value
    - Added Action Set Animator Float Random
    - Added Action Set Animator Bool Random
- New Component CVR Variable Buffer
    - The Variable Buffer can be used to store local variables
- Changes to the CVR Interactable regarding the Variable Buffer
    - Added Trigger: On Variable Buffer Update
    - Added Trigger: On Variable Buffer Comparision
    - Added Action: Set Animator Float By Var
    - Added Action: Variable Buffer Arithmetic 

### Changes

- The tag array is now assembled on API side, the client does no longer have authorativity over tag assemble.
- Changed the way the upload is processed on client and server side.
- Changed default value of "Overwrite image" to be disabled by default.
- Cleaned up the core code.
- Changed request type from http to https.
- Performance improvements.