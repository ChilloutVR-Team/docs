# Available Events

## DefaultExecutionOrder Attribute

In our WASM implementation, the `[DefaultExecutionOrder]` attribute only affects ordering **inside the VM**, not Unity's native script order.
It guarantees ordering **only among WasmBehaviours**, including when multiple behaviours receive the same event.

Example:

=== "EarlyBird"
    ```csharp
    [DefaultExecutionOrder(-100)]
    public partial class EarlyBird : WasmBehaviour {
        void Awake() {
            // This script will run before most others.
        }

        private void OnPlayerJoined(Player player) {
            // This will fire before scripts with lower execution order.
        }
    }
    ```

=== "GoofyNameHere"
    ```csharp
    [DefaultExecutionOrder(10)]
    public partial class GoofyNameHere : WasmBehaviour {
        void Awake() {
            // This script will run after most others.
        }

        private void OnPlayerJoined(Player player) {
            // This will always fire after EarlyBird's OnPlayerJoined.
        }
    }
    ```

---

## Unity Events

| Signature                                                                                     | Description                                                                                                                                                                                     |
| --------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| void Awake()                                                                                  | Called when the script instance is loaded.                                                                                                                                                      |
| void Start()                                                                                  | Called before the first frame update, after all Awake calls.                                                                                                                                    |
| void Update()                                                                                 | Called once per frame.                                                                                                                                                                          |
| void LateUpdate()                                                                             | Called once per frame after all Update calls.                                                                                                                                                   |
| void FixedUpdate()                                                                            | Called on a fixed timestep for physics updates.<br><sub>Note: In ChilloutVR, `fixedDeltaTime` scales with refresh rate (30–144 Hz). The rate varies, but the timestep remains consistent.</sub> |
| void OnCollisionEnter([Collision](https://docs.unity3d.com/ScriptReference/Collision.html) c) | Called when collision starts.                                                                                                                                                                   |
| void OnCollisionStay([Collision](https://docs.unity3d.com/ScriptReference/Collision.html) c)  | Called every frame while colliding.                                                                                                                                                             |
| void OnCollisionExit([Collision](https://docs.unity3d.com/ScriptReference/Collision.html) c)  | Called when collision ends.                                                                                                                                                                     |
| void OnTriggerEnter([Collider](https://docs.unity3d.com/ScriptReference/Collider.html) other) | Called when another collider enters this trigger.                                                                                                                                               |
| void OnTriggerStay([Collider](https://docs.unity3d.com/ScriptReference/Collider.html) other)  | Called every frame while inside this trigger.                                                                                                                                                   |
| void OnTriggerExit([Collider](https://docs.unity3d.com/ScriptReference/Collider.html) other)  | Called when a collider exits this trigger.                                                                                                                                                      |

---

## Special Execution Order Events

| Signature              | Description                                       |
|------------------------|---------------------------------------------------|
| void PostFixedUpdate() | Runs after all Unity and scene FixedUpdate calls. |
| void PostUpdate()      | Runs after all Unity and scene Update calls.      |
| void PostLateUpdate()  | Runs after all Unity and scene LateUpdate calls.  |

These events run after all corresponding Unity calls, including scripts outside your VM.
For example, sampling a player's position is most accurate in the `PostLateUpdate` event, as local Avatar IK and Network IK will have been applied by then. 

---

## Gotcha, Scene Execution Order

Unity processes **script execution order on a per-scene basis**. When multiple scenes are loaded additively, the configured execution order is **applied in full for each scene individually**, not across all scenes at once.  
See [Unity Documentation](https://docs.unity3d.com/Manual/script-execution-order.html) for reference.

This means that even with `PostFixedUpdate`, `PostUpdate`, and `PostLateUpdate`, you need to consider which scene your scripts belong to and what they are trying to run after. For the vast majority of use cases, this behaviour will not be something you need to necessarily think about, but do keep it in mind.

For example:

- **World Scene (active)**
    - Runs `FixedUpdate`
    - Runs `Update`
    - Runs `LateUpdate`

- **Remote Avatars/Props/Portals Scene (additive)**
    - Runs `FixedUpdate`
    - Runs `Update`
    - Runs `LateUpdate`

- **Local Avatar & LateEventManager (DontDestroyOnLoad)**
    - Runs `FixedUpdate`
    - Fires `PostFixedUpdate`  for all in order of subscription.
    - Runs `Update`
    - Fires `PostUpdate`  for all in order of subscription.
    - Runs `LateUpdate`
    - Fires `PostLateUpdate`  for all in order of subscription.

World evaluates -> Remote Avatars/Props evaluate -> Local Avatar & Late Events evaluate.

---

## Player Events

For Player related APIs see: [Player API](player.md) and [LocalPlayer API](local-player.md)

| Signature                                               | Description                     |
| ------------------------------------------------------- | ------------------------------- |
| void OnPlayerJoined([Player](player.md) player)         | Player joins (local included).  |
| void OnPlayerLeft([Player](player.md) player)           | Player leaves (local included). |
| void OnPlayerRespawned([Player](player.md) player)      | Player respawns.                |
| void OnPlayerTriggerEnter([Player](player.md) player)   | Player enters this trigger.     |
| void OnPlayerTriggerStay([Player](player.md) player)    | Player remains in this trigger. |
| void OnPlayerTriggerExit([Player](player.md) player)    | Player exits this trigger.      |
| void OnPlayerCollisionEnter([Player](player.md) player) | Collision with a player begins. |
| void OnPlayerCollisionStay([Player](player.md) player)  | Player remains in collision.    |
| void OnPlayerCollisionExit([Player](player.md) player)  | Collision with a player ends.   |

---

## Prop Events

For Prop related APIs see: [Prop API](prop.md)

| Signature                                                     | Description                   |
| ------------------------------------------------------------- | ----------------------------- |
| void OnPropSpawned([Prop](prop.md) prop)                      | Prop spawned in instance.     |
| void OnPropDespawned([Prop](prop.md) prop)                    | Prop despawned.               |
| void OnPropTriggerEnter([Prop](prop.md) prop, Collider other) | Prop enters this trigger.     |
| void OnPropTriggerStay([Prop](prop.md) prop, Collider other)  | Prop remains in this trigger. |
| void OnPropTriggerExit([Prop](prop.md) prop, Collider other)  | Prop exits this trigger.      |
| void OnPropCollisionEnter([Prop](prop.md) prop, Collision c)  | Prop collision begins.        |
| void OnPropCollisionStay([Prop](prop.md) prop, Collision c)   | Prop remains colliding.       |
| void OnPropCollisionExit([Prop](prop.md) prop, Collision c)   | Prop collision ends.          |

---

## Portal Events

For Portal related APIs see: [Portal API](portal.md)

| Signature                                          | Description           |
| -------------------------------------------------- | --------------------- |
| void OnPortalCreated([Portal](portal.md) portal)   | Portal was created.   |
| void OnPortalDestroyed([Portal](portal.md) portal) | Portal was destroyed. |

---

## Networking Events

For Networking related APIs see: [Networking API](networking.md)

| Signature                                                                     | Description                                                                                          |
| ----------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| void OnInstanceOwnerChange([Player](player.md) newOwner)                      | Invoked whenever the instance ownership changes.                                                     |
| void OnNetworkMessageReceived([Player](player.md) sender, Span<byte> message) | Invoked whenever a message is received. You must explicitly subscribe to this in the Networking API. |
