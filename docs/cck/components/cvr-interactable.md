# CVR Interactable <div class="whitelisted" data-list="WP"></div>

##### Tooltip  
A tooltip text which will be displayed when hovering over the trigger.

## Triggers
The list of triggers defined for this **Interactable**.

### Trigger
Every trigger has a type selected, which defines how it will be or can get triggered.

#### General Properties
Properties which are valid for all the different types.

##### Broadcast Type
Defines how the triggered action should be networked to other players in the instance.

+ **Local Not Networked**  
  Not Networked, execution is local only
+ **Global Networked**  
  Execution networked to all other players in the instance
+ **Global Instance Owner Only**  
  Same as **Global Networked**, but only allowed to be triggered by the current instance owner
+ **Global Networked All Instance Moderators**  
  Same as **Global Networked**, but only allowed to be triggered by all the instance moderators

!!! info "Buffered Network Types"
    The suffix Buffered means, the execution will be synced to late joiners (execution count saved on server side). 

##### Delay (Seconds)  
Sets a delay in seconds before the action will be executed.


#### On Grab
Triggered when a player grabs the object


#### On Drop
Triggered when a player drops the object


#### On Interact Down
A player interacts with the object by e.g., pointing at the object and pressing Left Click

**Distance**  
The maximum distance a player can be apart from the object, but still interact with the interactable.


#### On Interact Up
Triggered when e.g., releasing the Left Click button

**Distance**  
The maximum distance a player can be apart from the object, but still interact with the interactable.


#### On Enter Trigger
Collider with **is trigger** set, enters the collider of the interactable

**Layer**  
The triggering object must be on one of the selected layers.


#### On Exit Trigger
Collider with **is trigger** set, exits / leaves the collider of the interactable

**Layer**  
The triggering object must be on one of the selected layers.


#### On Enter Collider
Collider with **is trigger** **_not_** set, enters the collider of the interactable

**Layer**  
The triggering object must be on one of the selected layers.


#### On Exit Collider
Collider with **is trigger** **_not_** set, exits / leaves the collider of the interactable

**Layer**  
The triggering object must be on one of the selected layers.


#### On Enable
Triggered when enabling the game object.


#### On Disable
Triggered when disabling the game object.


#### On Timer
Simple scheduler for actions.

**Seconds**  
Set the time in seconds for the timer.

**Mode**  

+ **Once On Enable**
  The action will be executed after **x seconds** once.
+ **Repeat**
  The action will be executed every **x seconds** repeatedly.
+ **Deactivate Self** 
  Executes the action after **x seconds** and deactivates its own game object afterwards.
  
#### On Particle Hit
Triggered whenever a particle hits the trigger collider.
Particle system need to have collision enabled and set to world in order for them to be able to trigger actions.

**Specific Particle Systems**
A List of particle systems that can trigger the actions.
If this is left empty, every particle system is eligible to trigger it.


#### On Variable Buffer Update
Triggers whenever the variable saved in the selected [CVR Variable Buffer](cvr-variable-buffer.md) changes.


#### On Variable Buffer Comparison

**Type**  
You can select how you want to compare your variable.

+ **Buffer -> Static**  
  Compare the buffer value with a static value (**Value 2**)
+ **Buffer -> Buffer**  
  Compare the buffer value with another buffers (**Value 2**) value
  
**Value 1**  
The first variable to be used in comparison. Select a [CVR Variable Buffer](cvr-variable-buffer.md) here.

**Comparitor**  
Choose the operator you want to use in comparison. You can choose from the following:

+ **==** Equal to
+ **>=** Greater than or equal to
+ **>** Greater than
+ **<** Less than
+ **<=** Less than or equal to
+ **!=** Not equal to

**Value 2**  
The second value you want to compare your variable to.

+ **Buffer -> Static:** Enter a float number here. (e.g., 13.37, 1, 1.0)
+ **Buffer -> Buffer:** Select a second [CVR Variable Buffer](cvr-variable-buffer.md)

???+ tip "Update rate"
     The comparison is updated/executed each time, the variable buffer receives a change.

#### On Cron
Can be used to define cron jobs. You can learn more about [Cron here](https://en.wikipedia.org/wiki/Cron).

**Cron String**  
Paste a valid cron string here.


#### On Pointer Enter
Triggered whenever a players pointer enters the trigger.

#### On World Trigger

#### On Custom Trigger

#### On Input Down
Allows listening to custom user inputs.

**Interaction Filter**

+ **Global** Always trigger actions when input is received.
+ **Looking** Only trigger when looking at the object
+ **Attached** Allow only when object is attached to player
+ **Held** Only when held in hand
+ **Sitting** While sitting in a chair of the interactable

**Interaction Input**
The input required for the action to trigger.

**Interaction Input Modifier**
Additional key's required.


#### On Input Up
Same as [On Input Down](#on-input-down) but triggered when releasing the input.
E.g. release a key you pressed down.


#### On Gaze Enter
When a player looks at the object.

#### On Gaze Exit
When a player looks away from the object, while previously have triggered [On Gaze Enter](#on-gaze-enter).


### Actions
Just like the trigger, an action also has a type. 

#### Common Properties
**Target**  
Target game object, that should be modified.
E.g., for actions targeting an animator, this game object needs to contain an animator component.

**Parameter Name**  
Used for actions targeting an animator. It's used to define the parameter that should be modified. Fill in the name
of the parameter that you want to target.


#### Set Game Object Active
Sets the active state of a game object.

**State**  

+ **Enable** Enable the game object when triggered.
+ **Disable** Disable the game object when triggered.
+ **Toggle** Toggles the game object when triggered.
  
#### Set Animator Float/Bool/Int Value
Set animator float parameter to a value.

**Value**  
The value the named parameter should be set to on execution.  
The value type depends on the selected **Action Type**. It can be:

+ **Float** Decimal number (e.g., **13.37**)
+ **Bool** State (**true** or **false**)
+ **Int** Integer, whole number (e.g., **5**)


#### Trigger Animator Trigger
Trigger an animator trigger with this action.

**Trigger name**  
Name of the parameter within the animator.


#### Spawn Object
With this action, you can instantiate objects like [**Prefabs**](https://docs.unity3d.com/Manual/Prefabs.html).

**Object**  
Select your object you want to instantiate or spawn here. E.g., a prefab.

**Target Location**  
The parent game object, which also defines the position origin.  
The spawned object will be a child of this object.


#### Teleport Player
Teleport a player to a defined position.

**Target Location**  
Select your target transform by selecting a game object. You can use an empty game object for this, set the transform
to a position and rotation where you want to teleport the player to. Scale has no effect and is ignored.


#### Teleport Object
Teleport a game object to a defined position.

**Object**  
Select an object you want to teleport.

**Target Location**  
Select your target position by selecting a game object. You can use an empty game object for this, set the transform
position where you want to teleport the object to. Rotation and scale has no effect and is ignored.


#### Toggle Animator Bool Value
Allows you to toggle an animator parameter bool.


#### Set Animator Float/Int/Bool Random
Allows you to randomly set animator parameters.

**Parameter Name**  
The name of the parameter that should be modified.

**Min**  
The minimum number it can be set to.

**Max**  
The maximum number it can be set to.

**Chance (0-1)**  
The chance the bool parameter will be set to true. Must be within a range of **0 - 1**.


#### Set Animator Float/Int By Var
Set a float or int parameter of an animator to a value saved in a [CVR Variable Buffer](cvr-variable-buffer.md)

**Value**  
Select a [CVR Variable Buffer](cvr-variable-buffer.md) here.


#### Variable Buffer Arithmetic
Used to modify a [CVR Variable Buffer's](cvr-variable-buffer.md) value.

**Type**  
Defines the **Value 2** type of the operation.

+ **Buffer -> Static**  
  Compare the buffer value with a static value (**Value 2**)
+ **Buffer -> Buffer**  
  Compare the buffer value with another buffers (**Value 2**) value
+ **Buffer -> Random**  
  Compare the buffer value with another buffers (**Value 2**) value

**Value 1**  
The value of the [CVR Variable Buffer](cvr-variable-buffer.md) that will be used for the operation.

**Operator**  

+ **+** Addition
+ **-** Subtraction
+ **\*** Multiplication
+ **÷** Division
+ **mod** Modulo
+ **pow** Power (Exponentiation)
+ **log** Logarithm

**Value 2**
The second value you want to perform you operation with. Depending on the selected type, you need to enter or select
different values.

+ **Buffer -> Static:** Enter a float number here. (e.g., 13.37, 1, 1.0)
+ **Buffer -> Buffer:** Select a second [CVR Variable Buffer](cvr-variable-buffer.md).
+ **Buffer -> Random:** Select a **Minimum**, and a **Maximum** value, from which a random value from in between is generated.

**Result**  
Select a [CVR Variable Buffer](cvr-variable-buffer.md), which should receive the result value.


#### Display World/Avatar/Instance Detail Page
Allows you to show the details page of a world.

**World/Avatar GUID**  
Fill in the world's or avatar's guid. You can find more information about this here [CVR Asset Info](cvr-asset-info.md)

**Instance GUID**  
Fill in a valid instance guid.


#### Sit At Position
Allows you to make chairs or other object to sit on.

**Sitting Location**  
Defines the origin sitting animation position. (**0, 0, 0** position of the animation)

**Exit Location**  
The player will be teleported to this location when exiting the sitting state.

**Overwrite Animation**  
Select an animation you want to use instead of the default sitting animation.

#### Method Call
Allows calling public functions of a component.

#### Set Spawnable Value
Allows you to set the synced value of a spawnable.
This requires the interactable component to be on the root or in a child of the spawnables hierarchy.

**Parameter**
The parameter you want to modify.

**Value**
The value used to modify it with the following method.

**Update Method**
Defines how the value will be applied.

+ **Override** Will just set it to the value
+ **Add** Will add the value onto of the spawnables value
+ **Subtract** Will subtract the value of the spawnables value
+ **Toggle** Used for toggles, bool's, to toggle between two states (true -> false, false -> true)

#### Play Audio
Used to play an audio source.

**AudioSource**
The audio-source to be played.

#### Stop Audio
Will stop an audio source's playback.

**AudioSource**
The audio-source to be stopped.

#### Set Property By Value
Allows to set a property of a component to a value from a [CVR Variable Buffer](cvr-variable-buffer.md)

**Variable Buffer**
[CVR Variable Buffer](cvr-variable-buffer.md) used to pull the value from.

**Target**
A game object containing your target component.

**Component**
Shows all components on the game object you selected.
Select the component with whose value you want to modify.

**Property**
Shows all public property's of the selected component.
Select the property you want to modify.
