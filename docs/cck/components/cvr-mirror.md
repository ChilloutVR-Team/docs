# CVR Mirror <div class="whitelisted" data-list="W"></div>
The mirror component, we suggest you to use the corresponding prefab to place a mirror in the world, the white surface is the mirror reflection side.

### Properties

##### Disable Pixel Lights
Turns off the pixel lights in mirrors.
You can think of this as realtime lightsources to not be shown in the mirror.

##### Texture Size
Adjusts the maximum allowed texture size / resolution allowed by this mirror.

!!! info  
    Value of 256 defines a 256 x 256 texture resolution as maximum resolution.

##### Clip Plane Offset
Shifts the reflection plane forward from the mirror surface.

##### Frames Needed To Update
Defines how many frames needed before the mirror reflection will update again.

!!! info  
    Value of 0 or 1 will update the mirror every frame.  
    Value of 2 will update mirror every second frame etc.  


##### Reflect Layers
Defines which objects / layers will be captured by the mirror camera. For example:  

- **PlayerLocal:** Reflects your own avatar.  
- **PlayerNetwork:** Reflects other players in the world.  
- **CVRPickup:** Reflects any "CVR Pickups" in the world.  

