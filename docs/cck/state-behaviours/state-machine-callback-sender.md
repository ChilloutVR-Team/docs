# State Machine Callback Sender <div class="whitelisted" data-list="AWP"></div>

This State Machine Behaviour is used to send [OnStateMachineEnter](https://docs.unity3d.com/2022.3/Documentation/ScriptReference/StateMachineBehaviour.OnStateMachineEnter.html) and [OnStateMachineExit](https://docs.unity3d.com/2022.3/Documentation/ScriptReference/StateMachineBehaviour.OnStateMachineExit.html) callbacks to a component implementing `IStateMachineCallbackReceiver` during animator state transitions.

A receiver can be placed on any GameObject in the hierarchy relative to the animator.

---

### Fields

| Name         | Type     | Description                                                                                                                                            |
|--------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| localOnly    | `bool`   | If true, only the Avatar wearer or Prop owner will run this behaviour. Ignored in Worlds.                                                              |
| receiverPath | `string` | Relative path from the animator to the GameObject holding the receiver. There is an object field you can drag-and-drop to automatically set this path. |

---

### Usages

??? example "Using With CVR Interactables"
    You can use this component to send callbacks to a [CVR Interactable](../components/cvr-interactable.md) component by adding the OnStateMachineEnter and OnStateMachineExit triggers.

??? example "Using With Scripting"
    You can target a [CVR Lua Client Behaviour](../components/cvr-lua-client-behaviour.md) to invoke `OnStateMachineEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)` and `OnStateMachineExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)`.

---

## Notes

- Remote avatars will not receive callbacks unless `localOnly` is set to false.
- Spawnables follow the same rule: events only fire if the object is owned by the local player.
- Useful for coordinating animation events with game logic components.