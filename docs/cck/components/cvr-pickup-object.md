# CVR Pickup Object <div class="whitelisted" data-list="WP"></div>
Add this component to configure a game object as a pickup object. Players will be able to grab pickup objects.

### Properties

##### Grip Type
1. **Free**  
   This allows the game object to be picked up without it being moved to the players grip location. By default, this is the hand or wrist of the player
2. **Origin**  
   This sets the game object to be moved to the grip location once picked up, see bellow to customize the grip location.

##### Grip Origin
This can be used to set a grip position for the object.

!!! info inline end  
You can use an empty game object for setting up the grip location.

##### Disallow Theft
Disallow other players from being able to grab the pickup object while being in someone else's hand.