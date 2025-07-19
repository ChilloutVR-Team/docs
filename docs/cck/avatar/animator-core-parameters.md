# Avatar Animator Core Parameters

Core Parameters are special Animator Parameters that are set automatically by the game. These parameters offer a quick 
way to make your avatar react to game information without needing anything beyond adding and using them in the animator.

If you're looking for more parameters, there is a component dedicated to write game information into animator 
parameters. The name of the component is [CVRParameterStream](../components/CVRParameterStream.md).

---

## Core Parameters

| Name            | Type    | Range         | Description                                                                                                                       |
|-----------------|---------|---------------|-----------------------------------------------------------------------------------------------------------------------------------|
| GestureLeft     | Float   | [-1.0 … 6.0]  | Current gesture state of the left hand<br>Fist uses analog weighting in [0.0 … 1.0]<br>[Gesture Values Mapping](#gesture-values)  |
| GestureRight    | Float   | [-1.0 … 6.0]  | Current gesture state of the right hand<br>Fist uses analog weighting in [0.0 … 1.0]<br>[Gesture Values Mapping](#gesture-values) |
| GestureLeftIdx  | Int     | [-1 … 6]      | Discrete left-hand gesture value without analog weighting<br>[Gesture Values Mapping](#gesture-values)                            |
| GestureRightIdx | Int     | [-1 … 6]      | Discrete right-hand gesture value without analog weighting<br>[Gesture Values Mapping](#gesture-values)                           |
| MovementX       | Float   | [-1.0 … 1.0]  | Horizontal movement input value                                                                                                   |
| MovementY       | Float   | [-1.0 … 1.0]  | Vertical movement input value                                                                                                     |
| Grounded        | Bool    | [false, true] | Indicates if the player is on the ground                                                                                          |
| Emote           | Float   | [0.0 … 8.0]   | Target emote to play. Resets to `0.0` within `0.1 second of being set                                                             |
| CancelEmote     | Trigger | —             | Trigger to cancel the current emote                                                                                               |
| Toggle          | Float   | [0.0 … 7.0]   | Currently selected toggle state                                                                                                   |
| Sitting         | Bool    | [false, true] | Indicates if the player is sitting                                                                                                |
| Crouching       | Bool    | [false, true] | Indicates if the player is crouching                                                                                              |
| Prone           | Bool    | [false, true] | Indicates if the player is prone                                                                                                  |
| Flying          | Bool    | [false, true] | Indicates if the player is flying                                                                                                 |
| Swimming        | Bool    | [false, true] | Indicates if the player is swimming                                                                                               |
| IsLocal         | Bool    | [false, true] | Indicates if the avatar is the local player                                                                                       |
| DistanceTo      | Float   | [0.0 … ∞]     | Distance to the local player in meters. Defaults to `-1.0` until updated                                                          |
| VisemeIdx       | Int     | [0 … 14]      | Index value representing the current viseme<br>[Viseme Values Mapping](#viseme-index-values)                                      |
| VisemeLoudness  | Float   | [0.0 … 1.0]   | Loudness level for the current viseme                                                                                             |
| IsFriend        | Bool    | [false, true] | Indicates if the observed avatar is a friend                                                                                      |
| VelocityX       | Float   | [0.0 … ∞]     | Velocity along the `X` axis                                                                                                       |
| VelocityY       | Float   | [0.0 … ∞]     | Velocity along the `Y` axis                                                                                                       |
| VelocityZ       | Float   | [0.0 … ∞]     | Velocity along the `Z` axis                                                                                                       |
| AFK             | Bool    | [false, true] | Indicates if the player is AFK.<br>*Only available in nightly builds atm*                                                         |

---

## Gesture Values

| Gesture     | Float Value | Int Value |
|-------------|-------------|-----------|
| Open Hand   | -1.0        | -1        |
| Fist        | [0.0 … 1.0] | 0         |
| Thumbs Up   | 2.0         | 2         |
| Gun         | 3.0         | 3         |
| Point       | 4.0         | 4         |
| Peace       | 5.0         | 5         |
| Rock n Roll | 6.0         | 6         |

---

## Viseme Index Values

| Viseme | Integer Value |
|--------|---------------|
| Sil    | 0             |
| PP     | 1             |
| FF     | 2             |
| TH     | 3             |
| DD     | 4             |
| KK     | 5             |
| CH     | 6             |
| SS     | 7             |
| NN     | 8             |
| RR     | 9             |
| AA     | 10            |
| E      | 11            |
| I      | 12            |
| O      | 13            |
| U      | 14            |

You can get a reference for each viseme at: 
<https://developers.meta.com/horizon/documentation/unity/audio-ovrlipsync-viseme-reference/#reference-images>{:target="_blank"}

---

## Notes

- Fist is analog (range from `0.0` to `1.0` depending on trigger press)
- Rock n Roll also includes the flip-off gesture (flipping the bird)
- Parameters are **case-sensitive**
- You are unable to write to these parameters using any CCK component as they are considered readonly, but you can read them using the Animator Driver or Scripting API
- Core Parameter types can be mismatched, e.g., you can define `AFK` as an int parameter instead of a bool in your animator, and it will be 0 or 1 depending on the AFK state