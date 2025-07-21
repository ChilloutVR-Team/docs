# Face Tracking Utilities
A GUI that features utilities for face tracking on avatars. This can be found as a menu item under 
(**Alpha Blend Interactive** / **Modules** / **Face Tracking Utilities**)

##### Avatar
Select your [CVR Avatar](../components/cvr-avatar.md) here.

##### Add Face Tracking (Button)
This will add a [CVR Face Tracking](../components/cvr-face-tracking.md) component to your avatar.

## Blendshape Generator
With this tab, you can generate face tracking blendshapes from existing ones.

!!! warning
    The Generator uses your **Avatars Voice Position** to generate new blendshapes. Please make sure it is in the middle of
    the mouth between the lips.

#### General Properties
##### X Blendshape
Select the fitting blendshape.

##### X Movement Strength
Defines how strong the movement of the generated blendshape will be.


#### Jaw Blendshape
You should use a blendshape here, that moves only the lips, and a little of the surrounding face.

#### Lip Blendshapes
Use a blendshape, that only moves the lips and a little of the surrounding face.

#### Separate Smile Blendshape
Select a blendshape, that contains a smile expression. The generator will separate the sides.

#### Separate Frown Blendshape
Select a blendshape, that contains a frown expression. The generator will separate the sides.

#### Puff Cheek Blendshape
Select a blendshape, that puffs both cheeks. The generator will separate the sides.

## Preview
After clicking **Generate Blendshapes** or selecting blendshapes, you can preview them here.