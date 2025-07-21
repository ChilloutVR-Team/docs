# CVR Face Tracking <div class="whitelisted" data-list="AP"></div>
The face tracking component allows the use of facial tracking hardware like e.g., 
[VIVE Facial Tracker](https://www.vive.com/eu/accessory/facial-tracker/).

### Properties

##### Enable Facial Tracking
Enable or disable the facial tracking. This can be toggled on runtime by e.g., an animation.

##### Blend Shape Weight
Defines how strong the blendshapes should react to the facial tracking input. Range from 50 to 500.

##### Face Mesh
Select your face mesh, containing the necessary blendshapes.

##### Blendshapes
Please refer to the [VIVE Eye and Facial Tracking SDK](https://developer.vive.com/resources/vive-sense/sdk/vive-eye-and-facial-tracking-sdk/)
for questions about each blendshape.

##### Auto select Blendshapes (Button)
Automatically searches blendshapes for face tracking and applies them.

#### Open Blendshape Generator (Button)
This opens the [Face Tracking Utilities](../avatar/face-tracking.md) GUI.