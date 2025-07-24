# CVR Animator Driver <div class="whitelisted" data-list="AWP"></div>
This component can be used to control [Animator](https://docs.unity3d.com/ScriptReference/Animator.html) parameters from
another animation. Useful for e.g., creating sub animators, and controlling their parameters with the main animator.

!!! tip "Need the State Machine Behaviour instead?"
    If you're trying to drive animator parameters from within a state machine, check out the [Animator Driver state behaviour](../state-behaviours/animator-driver.md).

### Animator Parameters
A list of animator parameters you want to control.

##### Animator
Select the [Animator](https://docs.unity3d.com/ScriptReference/Animator.html) you want to control for this specific parameter.

##### Parameter
All parameters of the selected [Animator](https://docs.unity3d.com/ScriptReference/Animator.html) will be listed here.

##### Value
Set the parameter value here. This property can be modified during runtime by e.g., an animation.
