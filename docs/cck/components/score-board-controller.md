#  Score Board Controller <div class="whitelisted" data-list="W"></div>
Adding this component will allow you to display information about the [GameInstanceController](game-instance-controller.md) in a Unity UI Canvas.
> As of game version r177 Text UI is limited to Unity's legacy Text UI components. This may change in the future.

### Properties
These are properties that are controlled by the [GameInstanceController](game-instance-controller.md).

##### GameInstanceController
 The [GameInstanceController](game-instance-controller.md) component the Score Board Controller is controlled by.
##### Round Timers
This is a List of text components that can display the time of the current round.
##### Round Status
This is a List of text components that can display the round status of the game. These are what the Round Status' can say:
     
"Waiting For Players"  
"Players Ready"  
"Game Starting"  
"Game in Progress"  

##### Team Elements
This is a list of elements in order of the Team Index in the Game Instance Controller.
##### Player Lists
This is a list of Text components that can display player names of the players in a Team.
##### Team Score
This is a list of Text components that can display the Team's current score.
