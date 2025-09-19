# Damage <div class="whitelisted" data-list="WP"></div>
Adding this component will allow the GameObject's collider or Particle system to inflict damage to the player; if the [CombatSystem](combat-system.md) is present in your scene.

### Properties

##### Damage Type
+ Stack  
Inflicts damage to Shield, Armor, and Health of the player.
+ Shield  
Only inflicts damage to the Shield of the player.
+ Armor  
Only inflicts damage to the Armor of the player.
+ Health  
Only inflicts damage to the Health of the player.

##### Damage Amount
This is the amount of damage that is applied to the Damage Type.

##### Damage Over Time Amount  
The amount of damage per second that is applied to the Damage Type.
##### Damage Over Time Duration  
How many seconds that Damage Over Time is applied to the Damage Type.
##### Damage Over Time Contact  
Applies the Damage Over Time to the Damage Type if the player is in or not in contact with the GameObject.

##### Damage Multiplier
Multiplies the Damage Amount to the Damage Type.  

+ Health Multiplier  
Amount multiplied to Health Damage.
+ Armor Multiplier  
Amount multiplied to Armor Damage.
+ Shield Multiplier  
Amount Multiplied to Shield Damage.


##### Enable Damage Falloff  
Enables or disables Damage Falloff
##### Damage Falloff Distance  
The maximum distance damage can be applied to the Damage Type
##### Damage Falloff Curve  
A curve that determines how much damage is applied along the Falloff Distance.
##### Damage Falloff Effect Damage Over Time  
Applies or does not apply the Damage Falloff to the Damage Over Time property.
