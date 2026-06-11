# OSC (Open Sound Control)

ChilloutVR supports OSC for remote interaction with avatar parameters and input control. This is a first iteration, more updates are expected after receiving community feedback.

---

## Overview

OSC enables communication between ChilloutVR and compatible applications or devices over the local network. You can both send
and receive data in real time. ChilloutVR implements support for OSCQuery, making it easier for tools to discover
available endpoints dynamically.

### Endpoints

#### Avatar Parameters

- `/avatar/parameters/<parameter_name>` Read/write to avatar parameters

#### Avatar Switch

- `/avatar/change` Trigger avatar switching (or listen for avatar changes)

#### Avatar Profiles

- `/avatar/profile/change` Trigger avatar profile changes (or listen to the changes). The available avatar profiles for
  the current avatar can be acquired from OSCQuery.

#### Input

- `/input/<input_name>` Simulate game inputs like jump, move, etc.

#### ChatBox

* `/chatbox/typing`
  Sends typing state events to the ChatBox.
  **Args:**

    1. `bool` - IsTyping (`true` = typing, `false` = stopped)
    2. `bool` *(optional)* - SoundNotification (play typing sound)

* `/chatbox/input`
  Sends a message to the ChatBox as if entered by the user.
  **Args:**

    1. `string` - Message text
    2. `bool` - SendWithoutOpeningKeyboard
    3. `bool` *(optional)* - SoundNotification
    4. `bool` *(optional)* - ShowInChatBoxBubble
    5. `bool` *(optional)* - ShowInHistoryWindow

!!! tip "Filtering ChatBox OSC Messages"
    ChatBox messages sent via OSC are labeled as "OSC" and can be filtered in settings.
    The global toggle is in **Audio & Comms → ChatBox - Enable OSC Msgs**, or per-user in **ChatBox Visibility Settings** when a player is selected.

#### Face Tracking

Face tracking over OSC uses **VRCFaceTracking Unified Expression parameter names** sent to the `/avatar/parameters` endpoint.
Unified Expression parameters sent to this endpoint are automatically routed to the native face-tracking system.

<sub>Reference: [https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/parameters](https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/parameters)</sub>

* `/avatar/parameters/<unified_expression_parameter_name>`
  Read/write Unified Expression values via OSC.

Only the **final parameter name** needs to match. Any leading path is ignored for greater compatibility with existing tools.

**Example:** `/avatar/parameters/vendor/version/potato/NoseSneerLeft` → `NoseSneerLeft`

When using the `CVRFaceTracking` component, avatars do **not** need explicit VRCFT parameters defined in their animator. If both are present, both will be updated.

!!! tip "Intercepting Face Tracking Parameters from Avatar Parameters Endpoint"
    This behavior exists for compatibility with existing OSC tools and may change if a dedicated face-tracking OSC endpoint is standardized.

#### OSC Query

- Supports OSCQuery protocol for service discovery ([spec](https://github.com/Vidvox/OSCQueryProposal){:target="_blank"})

---
> 
> OSC is disabled by default. You can enable or disable OSC in-game from  
**Settings → Implementation → OSC**

---

### Launch Arguments

You can customize OSC behavior via launch parameters. For the full list, see
the [OSC Launch Arguments](launch-arguments.md#osc) page.

> Use these to support third-party OSC tools not designed for CVR by adjusting the sender/receiver setup and query
> service name.
