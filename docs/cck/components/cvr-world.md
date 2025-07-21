# CVR World <div class="whitelisted" data-list="W"></div>
This is the main component for a world and needed for uploading your world. 

### World Settings

##### Spawns
The transform position and rotation of the assigned game objects will be used as spawn points for players.
If there are no configured spawn points, the transform of the cvr world game object will be used instead.

!!! info  
    Place the spawn locations above the ground so players do not fall through or get stuck inside the ground collider.

##### Spawn Rule

+ **In Order**  
   Each new player joining the world will be selected a new spawn point in Ascending order 1, 2, 3, 4 etc. in the spawn list.
+ **Random**  
   Each new player joining the world will be selected a random spawn location from the spawn list.

##### Reference Camera
Assign a camera here, to configure values, that will be applied to the players main camera ingame.

##### Respawn Height
The height in Y direction in the scene where the player will respawn when falling past this limit.

##### Object Respawn Behaviour
+ **Destroy**  
   Destroys the object when falling past respawn height.

+ **Respawn**  
   Respawns the object when falling past respawn height.

### Optional Settings

##### Warp Points
Define warp points that are accessible through the menu.

!!! warning  
    **Warp Points** is not usable yet