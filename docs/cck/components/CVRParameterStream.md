# CVR Parameter Stream <div class="whitelisted" data-list="APW"></div>

This component allows to write information from the game into Animator's parameters.

Some of the types may require the Parameter Stream to be place on a certain spot within the hierarchy. Check the
description on each category for more information.

---

## Parameter Stream Types

Since there is a significant amount of parameters, they were split into several categories. For better navigation use
the links on the right panel of the window.

### General

The general types represent general information about the game.

**Requirements:**

- None

| Stream Type                        | Param Type | Value Range       | Description                                                                         |
|------------------------------------|------------|-------------------|-------------------------------------------------------------------------------------|
| Time Seconds                       | Float      | [`0.0` … `∞`]     | The current System time in seconds since midnight including milliseconds            |
| Time Seconds Utc                   | Float      | [`0.0` … `∞`]     | The current System UTC time in seconds since midnight                               |
| Device Mode                        | Bool       | [`false`, `true`] | Checks if you are currently in VR. `true` = VR                                      |
| Headset On Head                    | Bool       | [`false`, `true`] | Checks if your headset is currently on your head                                    |
| Game Focused                       | Bool       | [`false`, `true`] | Checks if your game is currently focused.<br>*Only available in nightly builds atm* |
| Zoom Factor                        | Float      | [`0.0` … `1.0`]   | Zoom input level (desktop only). `0` = max zoom                                     |
| ~~Zoom Factor Curve~~ *deprecated* | Float      | [`0.0` … `1.0`]   | Use `Zoom Factor`                                                                   |
| Time Since Headset Removed         | Float      | [`0.0` … `∞`]     | Time in seconds since the headset was removed                                       |
| Time Since Game Unfocused          | Float      | [`0.0` … `∞`]     | Time in seconds since game was unfocused.<br>*Only available in nightly builds atm* |
| Time Since Local Avatar Loaded     | Float      | [`0.0` … `∞`]     | Time in seconds since local avatar loaded                                           |
| Local World Download Percentage    | Float      | [`0.0` … `1.0`]   | Download progress for the next world                                                |
| Local FPS                          | Float      | [`0.0` … `∞`]     | Local player's current FPS                                                          |
| Local Ping                         | Int        | [`0` … `∞`]       | Local player's ping to server                                                       |
| Local Player Count                 | Int        | [`0` … `∞`]       | Number of players in current instance                                               |
| Local Time Since First World Join  | Float      | [`0.0` … `∞`]     | Time since first world joined after game start                                      |
| Local Time Since World Join        | Float      | [`0.0` … `∞`]     | Time since last world joined                                                        |
| Local Player Muted                 | Bool       | [`false`, `true`] | Whether the local player is muted                                                   |
| Local Player Hud Enabled           | Bool       | [`false`, `true`] | Whether the HUD is enabled for the player                                           |
| Local Player Nameplates Enabled    | Bool       | [`false`, `true`] | Whether nameplates are visible                                                      |
| Local Player Height                | Float      | [`0.0` … `∞`]     | Height of player in centimeters                                                     |
| Local Player Left Controller Type  | Int        | [`0` … `9`]       | Type of left VR controller [Controller Values](#controller-type-mapping)            |
| Local Player Right Controller Type | Int        | [`0` … `9`]       | Type of right VR controller [Controller Values](#controller-type-mapping)           |
| Local Player Full Body Enabled     | Bool       | [`false`, `true`] | Whether full body tracking is enabled                                               |
| Current Instance Type              | Int        | [`0` … `6`]       | Current instance type [Instance Values](#instance-type-mapping)                     |

#### Controller Type Mapping

| Controller Type | Int Value |
|-----------------|-----------|
| None            | 0         |
| Other           | 1         |
| Vive            | 2         |
| MixedReality    | 3         |
| HpMotion        | 4         |
| Index           | 5         |
| Oculus          | 6         |
| Pico            | 7         |
| XRHand          | 8         |
| ViveCosmos      | 9         |

#### Instance Type Mapping

| Instance Type     | Int Value |
|-------------------|-----------|
| Public            | 0         |
| FriendsOfFriends  | 1         |
| Friends           | 2         |
| Groups            | 3         |
| EveryoneCanInvite | 4         |
| OwnerMustInvite   | 5         |
| FriendsOfGroup    | 6         |

---

### Eye Tracking

The Eye Tracking types represent information about the avatar eye movement and blinking.

**Requirements:**

- None

| Stream Type          | Param Type | Value Range      | Description                                           |
|----------------------|------------|------------------|-------------------------------------------------------|
| Eye Movement Left X  | Float      | [`-1.0` … `1.0`] | Horizontal movement of the left eye                   |
| Eye Movement Left Y  | Float      | [`-1.0` … `1.0`] | Vertical movement of the left eye                     |
| Eye Movement Right X | Float      | [`-1.0` … `1.0`] | Horizontal movement of the right eye                  |
| Eye Movement Right Y | Float      | [`-1.0` … `1.0`] | Vertical movement of the right eye                    |
| Eye Blinking Left    | Float      | [`0.0` … `1.0`]  | Blink progress of the left eye. `0`:open, `1`:closed  |
| Eye Blinking Right   | Float      | [`0.0` … `1.0`]  | Blink progress of the right eye. `0`:open, `1`:closed |

---

### Lip Sync

The Lip Sync types represent information about the avatar lip sync, which is driven by the oculus lipsync SDK.

If you want to access the current viseme index, you can check the
`VisemeIdx` [Core Parameter](../avatar/animator-core-parameters.md#core-parameters){:target="_blank"}

**Requirements:**

- None

| Stream Type  | Param Type | Value Range     | Description    |
|--------------|------------|-----------------|----------------|
| Viseme Level | Float      | [`0.0` … `1.0`] | Voice loudness |

---

### Input

The Input types represent information about the current input you're providing to the game.

**Requirements:**

- None

| Stream Type          | Param Type | Value Range       | Description                                        |
|----------------------|------------|-------------------|----------------------------------------------------|
| Trigger Left Value   | Float      | [`0.0` … `1.0`]   | Left trigger pressure                              |
| Trigger Right Value  | Float      | [`0.0` … `1.0`]   | Right trigger pressure / Left mouse button         |
| Grip Left Value      | Float      | [`0.0` … `1.0`]   | Left grip pressure                                 |
| Grip Right Value     | Float      | [`0.0` … `1.0`]   | Right grip pressure / Right mouse button           |
| Gripped Object Left  | Bool       | [`false`, `true`] | Whether object is grabbed in left hand             |
| Gripped Object Right | Bool       | [`false`, `true`] | Whether object is grabbed in right hand or desktop |
| Input Movement X     | Float      | [`-1.0` … `1.0`]  | Horizontal movement input. `-1`:left               |
| Input Movement Y     | Float      | [`-1.0` … `1.0`]  | Vertical movement input. `-1`:down                 |
| Input Look X         | Float      | [`-1.0` … `1.0`]  | Horizontal look input. `-1`:left                   |
| Input Look Y         | Float      | [`-1.0` … `1.0`]  | Vertical look input. `-1`:down                     |
| Input Jump           | Bool       | [`false`, `true`] | Jump input                                         |

---

### Avatar

The Avatar types represent information about the avatar you're currently wearing.

**Requirements:**

- None

| Stream Type    | Param Type | Value Range     | Description                                                  |
|----------------|------------|-----------------|--------------------------------------------------------------|
| Avatar Height  | Float      | [`0.0` … `∞`]   | The viewpoint height of the current avatar in meters         |
| Avatar Upright | Float      | [`0.0` … `1.0`] | How upright the avatar stands. `0`: flat, `1`: fully upright |

---

### Menu

The Menu types represent information about the state of the in-game menus.

**Requirements:**

- None

| Stream Type        | Param Type | Value Range       | Description                    |
|--------------------|------------|-------------------|--------------------------------|
| Is Any Menu Open   | Bool       | [`false`, `true`] | Any menu currently open        |
| Is Main Menu Open  | Bool       | [`false`, `true`] | Whether the main menu is open  |
| Is Quick Menu Open | Bool       | [`false`, `true`] | Whether the quick menu is open |

---

### Seed

The Seed types represent information that allows deterministically get values depending on another value.

**Requirements:**

- ⚠️ Only works on Avatars and Props

| Stream Type   | Param Type | Value Range                          | Description                                                 |
|---------------|------------|--------------------------------------|-------------------------------------------------------------|
| Seed Owner    | Int        | [`-2,147,483,648` … `2,147,483,647`] | Deterministic seed value from prop spawner or avatar wearer |
| Seed Instance | Int        | [`-2,147,483,648` … `2,147,483,647`] | Deterministic seed value from a prop instance ID            |

---

### User

The User types allows to get information about the current user related to a prop/avatar

**Requirements:**

- ⚠️ Only works on Avatars and Props

| Stream Type | Param Type | Value Range       | Description                                                 |
|-------------|------------|-------------------|-------------------------------------------------------------|
| is Owner    | Bool       | [`false`, `true`] | Whether the observer is the spawner/wearer of a prop/avatar |

---

### Transform

The Transform types represent information about the transform where the Parameter Stream component is placed

**Requirements:**

- ⚠️ This will provide the information about the transform where the Parameter Stream was added to

| Stream Type                 | Param Type | Value Range  | Description                     |
|-----------------------------|------------|--------------|---------------------------------|
| Transform Global Position X | Float      | [`-∞` … `∞`] | Global X position               |
| Transform Global Position Y | Float      | [`-∞` … `∞`] | Global Y position               |
| Transform Global Position Z | Float      | [`-∞` … `∞`] | Global Z position               |
| Transform Global Rotation X | Float      | [`?` … `?`]  | Global X rotation (Euler angle) |
| Transform Global Rotation Y | Float      | [`?` … `?`]  | Global Y rotation (Euler angle) |
| Transform Global Rotation Z | Float      | [`?` … `?`]  | Global Z rotation (Euler angle) |
| Transform Local Position X  | Float      | [`-∞` … `∞`] | Local X position                |
| Transform Local Position Y  | Float      | [`-∞` … `∞`] | Local Y position                |
| Transform Local Position Z  | Float      | [`-∞` … `∞`] | Local Z position                |
| Transform Local Rotation X  | Float      | [`?` … `?`]  | Local X rotation (Euler angle)  |
| Transform Local Rotation Y  | Float      | [`?` … `?`]  | Local Y rotation (Euler angle)  |
| Transform Local Rotation Z  | Float      | [`?` … `?`]  | Local Z rotation (Euler angle)  |

---

### Fluid Volume

The Fluid Volume types represent information about the fluid volume interactions with your avatar
or [PhysicsInfluencer](PhysicsInfluencer.md)

**Requirements on Avatar:**

- None

**Requirements on Physics Influencer (Worlds/Props):**

- ⚠️ This will provide the information about the [PhysicsInfluencer](PhysicsInfluencer.md) that is on the same or on a
  parent GameObject as the Parameter Stream.

| Stream Type                     | Param Type | Value Range       | Description                                        |
|---------------------------------|------------|-------------------|----------------------------------------------------|
| Fluid Volume Submerged          | Bool       | [`false`, `true`] | Whether player/influencer is submerged in fluid    |
| Fluid Volume Depth              | Float      | [`0.0` … `1.0`]   | Degree of submersion. `1.0` = completely submerged |
| Fluid Volume Time Since Entered | Float      | [`0.0` … `∞`]     | Time since fluid was entered (seconds)             |
| Fluid Volume Time Since Exit    | Float      | [`0.0` … `∞`]     | Time since fluid was exited (seconds)              |

---

### Input Car

The Input Car types represent information about the inputs that are used for driving cars. Even without being in a car
these inputs set the values.

**Requirements:**

- None

| Stream Type          | Param Type | Value Range      | Description                                  |
|----------------------|------------|------------------|----------------------------------------------|
| Input Car Steering   | Float      | [`-1.0` … `1.0`] | Steering input from VR, keyboard, or gamepad |
| Input Car Accelerate | Float      | [`0.0` … `1.0`]  | Acceleration input                           |
| Input Car Brake      | Float      | [`0.0` … `1.0`]  | Brake input                                  |
| Input Car Handbrake  | Float      | [`0.0` … `1.0`]  | Handbrake input                              |
| Input Car Boost      | Float      | [`0.0` … `1.0`]  | Boost input                                  |

---

### Rigidbody

The Rigidbody types represent information about a Rigidbody

**Requirements:**

- ⚠️ This will provide the information about the Rigidbody that is on the same or in a parent GameObject relative to the
  Parameter Stream component

| Stream Type          | Param Type | Value Range  | Description                                 |
|----------------------|------------|--------------|---------------------------------------------|
| Speed                | Float      | [`0` … `∞`]  | Speed of the Rigidbody in m/s               |
| Velocity X           | Float      | [`-∞` … `∞`] | Rigidbody velocity X (world space)          |
| Velocity Y           | Float      | [`-∞` … `∞`] | Rigidbody velocity Y (world space)          |
| Velocity Z           | Float      | [`-∞` … `∞`] | Rigidbody velocity Z (world space)          |
| Local Velocity X     | Float      | [`-∞` … `∞`] | Rigidbody velocity X (local space)          |
| Local Velocity Y     | Float      | [`-∞` … `∞`] | Rigidbody velocity Y (local space)          |
| Local Velocity Z     | Float      | [`-∞` … `∞`] | Rigidbody velocity Z (local space)          |
| Acceleration         | Float      | [`0` … `∞`]  | Magnitude of Rigidbody acceleration in m/s² |
| Acceleration X       | Float      | [`-∞` … `∞`] | Rigidbody acceleration X (world space)      |
| Acceleration Y       | Float      | [`-∞` … `∞`] | Rigidbody acceleration Y (world space)      |
| Acceleration Z       | Float      | [`-∞` … `∞`] | Rigidbody acceleration Z (world space)      |
| Local Acceleration X | Float      | [`-∞` … `∞`] | Rigidbody acceleration X (local space)      |
| Local Acceleration Y | Float      | [`-∞` … `∞`] | Rigidbody acceleration Y (local space)      |
| Local Acceleration Z | Float      | [`-∞` … `∞`] | Rigidbody acceleration Z (local space)      |

---

### WheelHubController

The [WheelHubController](WheelHubController.md) types represent information about
a [WheelHubController](WheelHubController.md)

**Requirements:**

- ⚠️ This will provide the information about the [WheelHubController](WheelHubController.md) that is on the same or in a
  parent GameObject relative to the Parameter Stream component

| Stream Type   | Param Type | Value Range       | Description                                                     |
|---------------|------------|-------------------|-----------------------------------------------------------------|
| Current Speed | Float      | [`-∞` … `∞`]      | Forward speed of the wheel hub in m/s; negative means reversing |
| Speed Factor  | Float      | [`0.0` … `?`]     | Normalized speed (0 to max speed)                               |
| Is Grounded   | Bool       | [`false`, `true`] | Whether any wheel is grounded                                   |

---

### WheelController

The [WheelController](WheelController.md) types represent information about
a [WheelHubController](WheelController.md)

**Requirements:**

- ⚠️ This will provide the information about the [WheelController](WheelController.md) that is on the same or in a
  parent GameObject relative to the Parameter Stream component

| Stream Type | Param Type | Value Range       | Description                    |
|-------------|------------|-------------------|--------------------------------|
| Is Grounded | Bool       | [`false`, `true`] | Whether this wheel is grounded |
| RPM         | Float      | [`?` … `?`]       | Current wheel RPM              |

---

### Damage System

The Damage System types represent information relative to the [ObjectHealth](ObjectHealth.md).

**Requirements:**

- ⚠️ Only works on Avatars and Props

**Requirements for Props:**

- ⚠️ This will provide the information about the [ObjectHealth](ObjectHealth.md) that is on the same or in a
  parent GameObject relative to the Parameter Stream component

| Stream Type    | Param Type | Value Range | Description  |
|----------------|------------|-------------|--------------|
| Current Health | Float      | [`0` … `*`] | Health value |
| Current Armor  | Float      | [`0` … `*`] | Armor value  |
| Current Shield | Float      | [`0` … `*`] | Shield value |

> `*` The max value is configured by the world's combat system

---

### NavMeshAgent

The NavMeshAgent types represent information about a NavMeshAgent.

**Requirements:**

- ⚠️ This will provide the information about the NavMeshAgent that is on the same or in a parent GameObject relative to
  the Parameter Stream component

| Stream Type        | Param Type | Value Range       | Description                                 |
|--------------------|------------|-------------------|---------------------------------------------|
| Speed              | Float      | [`0.0` … `∞`]     | NavMeshAgent's current speed                |
| Remaining Distance | Float      | [`0.0` … `∞`]     | Remaining distance to the path target       |
| Has Path           | Bool       | [`false`, `true`] | Whether a path to the target exists         |
| On OffMeshLink     | Bool       | [`false`, `true`] | Whether the agent is on an OffMeshLink      |
| OffMeshLink Type   | Int        | [`0`, `1`, `2`]   | `0`: Manual, `1`: DropDown, `2`: JumpAcross |

---

### Leg

The `Leg` types represent information about the [CVRLeg](CVRLeg.md) component

**Requirements:**

- ⚠️ This will provide the information about the [CVRLeg](CVRLeg.md) that is on the same or in a parent GameObject
  relative to the Parameter Stream component

| Stream Type  | Param Type | Value Range       | Description                                   |
|--------------|------------|-------------------|-----------------------------------------------|
| Is on ground | Bool       | [`false`, `true`] | Whether the leg is in contact with the ground |

---

## Value Application Expressions

These define how the streamed value is applied to the animator parameter (`result` is final value written):

### Arithmetic Operations

| Expression            | Result                          | Description                           |
|-----------------------|---------------------------------|---------------------------------------|
| Override              | `result = value`                | Replace current result with value     |
| Add To Current        | `result = curr_value + value`   | Add value to current parameter        |
| Add To Static         | `result = static_value + value` | Add value to a fixed static value     |
| Subtract from Current | `result = curr_value - value`   | Subtract value from current parameter |
| Subtract from Static  | `result = static_value - value` | Subtract value from static value      |
| Subtract with Current | `result = value - curr_value`   | Subtract current parameter from value |
| Subtract with Static  | `result = value - static_value` | Subtract static value from value      |
| Multiply with Current | `result = value * curr_value`   | Multiply value with current parameter |
| Multiply with Static  | `result = value * static_value` | Multiply value with static value      |
| Mod                   | `result = value % static_value` | Modulo operation                      |
| Pow                   | `result = value ^ static_value` | Exponentiation (power)                |

### Comparison Operations

| Expression               | Result                                             | Description                       |
|--------------------------|----------------------------------------------------|-----------------------------------|
| Compare Less Than        | `result = 1.0 if (value < static_value) else 0.0`  | Is value less than static?        |
| Compare Less Than Equals | `result = 1.0 if (value <= static_value) else 0.0` | Is value less or equal static?    |
| Compare Equals           | `result = 1.0 if (value == static_value) else 0.0` | Is value equal to static?         |
| Compare More Than Equals | `result = 1.0 if (value >= static_value) else 0.0` | Is value greater or equal static? |
| Compare More Than        | `result = 1.0 if (value > static_value) else 0.0`  | Is value greater than static?     |

---

## Notes & Tips

- Parameter names are **CASE SENSITIVE**
- Streamed parameters update **every frame**, manual changes will get overwritten

---


