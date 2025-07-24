# CVR Haptic Zone <div class="whitelisted" data-list="W"></div>
Allows you to define a haptic zone. You can define different actions that will trigger the
**[CVR Haptic Area Chest](cvr-haptic-area-chest.md)** when interacting with it.

##### Trigger Form
Define the trigger shape, you can choose from:
- **Box:** A simple box shape.
- **Sphere:** A simple sphere shape.

##### Trigger Center
Defines the center or origin position of the trigger.

##### Trigger Bounds
Define the size or scale of the trigger.

### Trigger Events

#### General Properties
##### Intensity
Defines how strong the haptics motors should vibrate.

#### On Enter
If enabled, the trigger will be executed when entering the zone.

#### On Stay
If enabled, the trigger will be executed while staying the zone.

##### Timing

- **Once:**  
  Triggers only once when entering the trigger area.

- **Continuous:**  
  Will continuously trigger the haptic motors.

!!! tip inline end  
    There are 50 ticks per second

- **Random:**  
  **Chance:**
  The chance the trigger will be applied per tick.

#### On Exit
If enabled, the trigger will be executed when exiting the zone.