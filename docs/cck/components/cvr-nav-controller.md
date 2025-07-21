# CVR Nav Controller <div class="whitelisted" data-list="WP"></div>
This component allows to control a [Nav Mesh Agent](https://docs.unity3d.com/ScriptReference/AI.NavMeshAgent.html)
path. You can select a target or enable patrol mode.

### Properties

##### Nav Mesh Agent
The [Nav Mesh Agent](https://docs.unity3d.com/ScriptReference/AI.NavMeshAgent.html) the component will control.

##### Nav Target List
A list of [Transform's](https://docs.unity3d.com/ScriptReference/Transform.html) the nav agent will target and go to.

##### Nav Target Index
The current index of the targeted transform.

##### Patrol Points
A list of [Transform's](https://docs.unity3d.com/ScriptReference/Transform.html) of patrol checkpoints.

##### Patrol Point Index
The current index of targeted patrol point. This switches automatically during patrol mode, but can also be overwritten.

##### Patrol Point Check Distance
The distance required to mark a patrol point as visited or completed.

##### Patrol Enables
Will make the nav agent patrol to the defined points. The agent will no longer target the [Nav Targets](#nav-target-list)