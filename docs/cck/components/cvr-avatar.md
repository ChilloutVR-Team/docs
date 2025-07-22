# CVR Avatar <div class="whitelisted" data-list="A"></div>
This component is the main component for your avatar, it features various settings and vaiables relevant for your 
avatar, you attach this component to the root gameobject of your avatar.


## General Avatar Settings
Setup for your voice & view position.

##### View Position
This is your view position ingame where you want your viewport to display from.
Editor window shown as 🟢 (Green ball)

##### Voice Position
This is your voice position ingame where you want your voice to be transmitted from.
Editor window shown as 🔴 (Red ball)

##### Voice Parent
The bone which your voice is attached to. It will follow it's position while you move your avatar around in world space.


## Avatar Customization
You can customize your avatar to do more than the movement we have as default

##### Animation Overrides
Here you can place your Override Controller where you specify which animation to use in place of our default setup, 
use the context menu to create a new CVR Override Controller in your unity project folder.

## Blinking and Visemes
You can configure your avatar to have eye movement, blinking and voice activated blendshapes called visemes.

##### Use Face Mesh
This slot is where you place your Body or Face mesh that have the blendshapes needing to be used for the settings bellow

##### Use Eye Movement
Enables automatic eyemovement that can focus on nearby players.

!!! hint "Toggle during runtime"
    Eye movement can be toggled of during runtime via e.g. an animation

##### Use Blinking Blendshapes
Enables blinking action of the blendshapes filled in the slots bellow and they will trigger together, e.g you can use 
one blendshape to blink both eyes or use two blendshapes for each eye and they will blink together.

!!! hint "Toggle during runtime"
    Blinking can be toggled of during runtime via e.g. an animation

!!! warning
    If you have an animation using the selected blendshapes, your blinking will not work, keep them seperate from 
    blendshapes used in animations.

##### Use Visemes Blendshapes
Enables use of blendshape visemes during transmition of your voice through voice chat, the blendshape slots can be 
autofilled if they have a naming scheme that fits or is near equal name of each slot.

!!! hint
    Blinking can be toggled of during runtime via e.g. an animation

!!! warning
    If you have an animation using the selected blendshapes, your visemes will not work, keep them separate from blendshapes used in animations.


## Advanced Tagging
With the advanced tagging feature, you can set tags for specific game objects only. This means, you can e.g., tag one 
specific audio source as a long range audio source, and will not render in every audio source to be removed, but instead
only this specific one.


!!! warning
    If you are using the Advanced Tagging System, you still need to Tag your Avatar appropriately and list all affected
    game objects in this list.

##### Tags
Set the according tags you want for this particular game object. You can have multiple tags on one game object.

##### GameObject
The game object you want to tag must be set here.

##### Fallback GO (GameObject)
A game object that should be used as a fallback, if the game object defined above falls under a filter rule.


## Advanced Avatar Setting
##### Base Animator
The Base Animator is used as a base by the AAS generator. That for, its very easy to expand the base animator while 
still using the AAS system.  
As a novice user it is recommended to use the one packed with the CCK it is called ***AvatarAnimator*** located in 
***Assets/ABI.CCK/Animations*** folder, you can use your own Animator here but we suggest to use the one packed with 
the CCK unless you know what you are doing.

##### Override Controller
This slot is only used if you have an already filled Override Controller and you want to transfer the attached override 
animations to the new generated one automatically.

##### Synced Bits Used
Shows how many synced bits you have used.

##### Create Animator (Button)
Generates a new Animator Controller & Override Controller from the configurations you have made.

##### Attach created Override to Avatar (Button)
Attaches the newly generated Override Controller directly to the CVRAvatar.


### Input
##### Name
Name of the input, this will be shown in the advanced avatar window in game.

##### Parameter
Parameter name that will be used in the Animator, this is automatically generated into the new Animator if you use the
generate button or can be manually added if you are experienced with custom animator setups.


### Types
#### Game Object Toggle
Creates a check/toggle box in your advanced avatar window in game.

##### Use Animation
Will use your attached animation as reference.

##### GameObjects
Creates a toggle animation for your game objects placed in the list.

##### Default
Default value of the selected type.


#### Game Object Dropdown
Creates a dropdown menu you can choose between different game objects in your advanced avatar window in game.

##### Options
A list of game objects you will be choosing from. You can have as many as you want in one dropdown.
We do not recommend creating to long lists, as it will be difficult to select all available options ingame.


#### Material Color
Creates three sliders in your advanced avatar window in game to choose your color from.

##### Material Properties
Select the material property (vector 3) you want to change.


#### Slider
Creates slider in your advanced avatar window in game.

##### Material Properties
Select the material property you want to change.


#### Joystick 2D
Creates a 2D plane you can choose position from in your advanced avatar window in game.

Range Min and Max set the size or scale of the Joystick plane.

##### Range Min
Defines the minimum or start range / value of the Joystick 2D. Means it can't go lower than this values.

##### Range Max
Defines the maximum or end range / value of the Joystick 2D. Means it can't go higher than this values.


#### Joystick 3D
Creates a 2D plane you can choose position from with a vertical slider in your advanced avatar window in game.

Range Min and Max set the size or scale of the Joystick plane.

##### Range Min
Defines the minimum or start range / value of the Joystick 2D. Means it can't go lower than this values.

##### Range Max
Defines the maximum or end range / value of the Joystick 2D. Means it can't go higher than this values.


#### Input Single
Single input field/single number. This will display a number input field ingame.


#### Input Vector 2
Two input fields/two numbers. This will display two number input fields ingame.


#### Input Vector 3
Three input fields/three numbers. This will display three number input fields ingame.