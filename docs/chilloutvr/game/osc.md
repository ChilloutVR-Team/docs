# OSC (Open Sound Control)

ChilloutVR supports OSC for remote interaction with avatar parameters and input control. This is a first iteration, more updates are expected after receiving community feedback.

---

## Overview

OSC enables communication between ChilloutVR and compatible applications or devices over the local network. You can both send
and receive data in real time. ChilloutVR implements support for OSCQuery, making it easier for tools to discover
available endpoints dynamically.

### Endpoints

**Avatar Parameters**

- `/avatar/parameters/<parameter_name>`: Read/write to avatar parameters

**Avatar Switch**

- `/avatar/change`: Trigger avatar switching (or listen for avatar changes)

**Input**

- `/input/<input_name>`: Simulate game inputs like jump, move, etc.

**OSC Query**

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
