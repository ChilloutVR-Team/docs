# Launch Arguments

This page describes the launch parameters that can be passed to the application at startup to alter its behavior.

---

### General

| Argument                             | Description                                                   | Notes / Details                                  |
|--------------------------------------|---------------------------------------------------------------|--------------------------------------------------|
| `-vr`                                | Launches the game in VR                                       |                                                  |
| `--force-openxr`                     | Forces the use of OpenXR for VR                               | This only affects the game when using VR         |
| `--no-steam`                         | Skips Steam API initialization                                |                                                  |
| `--safe-mode`                        | Loads the game into the default world (Hub) and avatar (kyle) | Also disables OSC                                |
| `--profile=<name>`                   | Profile to save/load the autologin profile file               | Allows switching accounts without logging in/out |
| `--affinity=<mask>`                  | Allows to set which cores the game should use to run          | [More Info](#-affinitymask)                      |
| `--content-cache-path=<path>`        | Overrides the content cache directory                         | [More Info](#-content-cache-pathpath)            |
| `--allow-aggressive-memory-clearing` | Forces memory RAM releasing when content is unloaded          | [More Info](#-allow-aggressive-memory-clearing)  |

### Video Player

| Argument                 | Description                                        | Notes                                                                                                            |
|--------------------------|----------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| `--disable-videoplayers` | Completely disables video players                  |                                                                                                                  |
| `--disable-vphd`         | Disables video player hardware decoding            | This will set the in-game setting to false as well<br>This might help addressing some issues when using AMD GPUs |
| `--enable-libvlc`        | Replaces the AVPro with LibVLC on the video player |                                                                                                                  |

### OSC

| Argument                           | Description                                                    | Notes                                                                                                                  |
|------------------------------------|----------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| `--osc-listener-port=<port>`       | Sets the UDP port to listen for OSC messages                   | To mimic the default behaviour:<br>`--osc-listener-port=9000`                                                          |
| `--osc-sender-port=<port>`         | Sets the UDP port to send OSC messages to                      | To mimic the default behaviour:<br>`--osc-sender-port=9001`                                                            |
| `--osc-sender-ip=<ip or hostname>` | Sets the target IP address or hostname to send OSC messages to | To mimic the default behaviour:<br>`--osc-sender-ip=127.0.0.1`                                                         |
| `--osc-query-prefix=<prefix>`      | Sets the prefix used for OSC query parameters.                 | To mimic the default behaviour:<br>`--osc-query-prefix=ChilloutVR`<br>This prefix will then be suffixed with `-XXXXXX` |

---

## Descriptions

### `--affinity=<mask>`

Allows manually setting which CPU cores the game runs on.

- Format: Hexadecimal mask (e.g. `--affinity=0x3` uses CPU 0 and 1).
- Tools like [Bitsum CPU Affinity Calculator](https://bitsum.com/tools/cpu-affinity-calculator/) can help.

---

### `--content-cache-path=<path>`

Overrides the path used for the content cache, by default it's on `XXX\ChilloutVR\ChilloutVR_Data\Cache`

For example `--content-cache-path="D:/Temp/"` would create the folder `CVRContentCache` in `D:\Temp\` and store the
cached content into it.

**Note1:** The picked folder needs to already exist
**Note2:** 🚨 The contents of `CVRContentCache` can be deleted by the game, do not store anything important in there.

---

### `--allow-aggressive-memory-clearing`

When avatars, props, or worlds are unloaded, this flag causes the game to release unused memory back to the system.
Useful on systems with limited RAM. This doesn't free the memory instantly, it signals instead that the RAM is available
to be reclaimed.

**Note:** ⚠️ This may cause stutters, or/and slower content loading.
