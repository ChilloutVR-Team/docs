# Control Point <div class="whitelisted" data-list="W"></div>
Adding this component to a GameObject with an IsTrigger collider will allow the player to obtain a score with the [GameInstanceController](game-instance-controller.md) by being in the volume.
> As of 2024r176 this component is not functional.

### Properties

+ **Game Instance Controller:** The Game Instance Controller component that is effected by the Control Point.
+ **Reference ID:** This value is for the game server to keep track of the control point. Do not edit this value.
+ **Capture Time:** The amount of time in seconds before marking the Control Point as captured.
+ **Capture Bonus For Multiple People:** Will divide the Capture Time by the amount of players in the volume.
+ **Recapture Delay:** The amount of time in seconds before the Control Point is able to be captured again.
+ **Score Per Second:** The score that is added to the capturing Team's score per second.
