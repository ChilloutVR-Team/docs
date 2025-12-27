# Content Creation Kit 1.15

!!! note
    This page was adapted from a snapshot from archive.org and may be incomplete. [View on archive.org.](https://web.archive.org/web/20210615011211/https://docs.abinteractive.net/cck-changelogs/content-creation-kit-1.15)

These are the release notes for ABI CCK 1.15 RELEASE Build number 41. Previous changes don't have any documentation about changes.

## Introduction

This version of our CCK contains new components as well as some usability improvements. It also fixes two bugs causing asset bundles not being built properly which would cause the upload to fail.

### New features

- Added directional pointers to teleport goals to better indicate their resulting direction in-game.
- The upload (overwriting) of world and avatar images can now be disabled in the upload panel if no re-upload is desired.
- Added CVR World Modifiers script (not implemented ingame yet) that can enable Newton on release and is used to manipulate world jump setting and player voice audio ranges. More options will be added in the future.

### Changes

- Fixed the avatar animator to not have the fist gesture partially shown when switching from open-hand to another gesture. (To fix your avatar just upload it again, the override controller should pick up the changed animator controller automatically)
- Fixed camera auto positioning for avatars where the pos vector point x does not equal 0.
- Cleaned up the code at some parts.
- Changed supported Unity version from 2019.2.8f1 to 2019.3.1f1