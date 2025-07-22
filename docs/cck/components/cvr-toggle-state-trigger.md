# CVR Toggle State Trigger <div class="whitelisted" data-list="A"></div>
With this component you can modify the toggle state of your avatar when a **[CVR Pointer](cvr-pointer.md)** 
enters the indicated trigger area. Size and placement can be adjusted with the settings bellow.
The trigger area will move together with its parented armature bone or game object.

### Properties

##### Area Size
X/Y/Z Size of your area.

##### Area Offset  
X/Y/Z Offset from the game object location.

##### Toggle state ID  
The selected toggle state.  
On trigger execution, this toggle state will be selected.

!!! info inline "Toggle state ids scheme"  
    Default State: **ID 0**  
    Toggle State 1: **ID 1**  
    Toggle State 2: **ID 2**  
    ...