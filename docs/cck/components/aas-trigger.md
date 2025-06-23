# CVR Advanced Avatar Trigger <div class="whitelisted" data-list="A"></div>
With this component you can modify your advanced avatar settings parameter values when a **[CVR Pointer](CVRPointer.md)** 
enters the indicated trigger area. Size and placement can be adjusted with the settings bellow.  
The trigger area will move together with its parented armature bone or game object.
If another collider component (such as a Box Collider, Sphere Collider, Mesh Collider, etc) is present on the same game object, that collider will be used as the trigger area.
Note that non-convex Mesh Colliders are not supported.

### Properties

##### Area Size
X/Y/Z Size of your area.

##### Area Offset
X/Y/Z Offset from the game object center location.

##### Setting Name
Parameter name of the setting to be modified.

##### Setting Value
The value the setting will be set to when triggered.

### Advanced Mode

##### Allowed Pointers
Adding pointers to this list, will ignore all other pointers and only work with those contained within the list.

##### Network Interactable
Allows network players to interact with your trigger.

##### Allowed Types
Allow only pointers having this type set.

#### General Properties

##### Setting Name
Parameter name of the setting to be modified.

##### Enabled Particle Interaction
Enabling this option will allow particle systems to activate this trigger. You need a [CVR Pointer](CVRPointer.md) on the same game object 
as the trigger for it to work. Particle can only trigger **On Enter Trigger**.

#### On Enter Trigger
Actions when [CVR Pointer](CVRPointer.md) enters the trigger area.

##### Setting Value
Set value that will override, added to or subtracted from the current parameter value.

##### Delay
Delay before the execution of the trigger

##### Hold Time
The time the pointer needs to stay in the trigger area, until the trigger gets executed.

##### Update Method
+ **Override** (Overrides the parameters value with the setting value)  
+ **Add** (Adds the setting value to the parameters value)  
+ **Subtract** (Subtracts the settings value from the parameters value)  

#### On Exit Trigger
Actions when [CVR Pointer](CVRPointer.md) exits the trigger area.

##### Setting Value
Set value that will override, added to or subtracted from the current parameter value.

##### Delay
Delay before the execution of the trigger

##### Update Method
+ **Override** (Overrides the parameters value with the setting value)
+ **Add** (Adds the setting value to the parameters value)
+ **Subtract** (Subtracts the settings value from the parameters value) 

#### On Stay Trigger
Actions when [CVR Pointer](CVRPointer.md) stays in the trigger area.

##### Update Method
+ **Set From Position** ()
+ **Add** (Will add the value from **Change per sec**)
+ **Subtract** (Will subtract the value from **Change per sec**)

##### Min Value
Minimum value which the update method will start from.

##### Min Value
Maximum value which the update method will or can go to.

##### Change per sec
Either add or subtract this value per second.

##### Sample Direction
+ **X Positive**
+ **Y Positive**
+ **Z Positive**
+ **X Negative**
+ **Y Negative**
+ **Z Negative**
