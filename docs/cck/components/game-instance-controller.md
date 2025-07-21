# Game Instance Controller <div class="whitelisted" data-list="W"></div>
Adding this component enables team based gamemodes in your world.

### Team Properties
Teams have their own set of properties and events that can be different between teams.

##### Index
The order the Team is in the list of other Teams.
##### Name
The Name of the Team.
##### Color
The Color associated with the Team.
##### Player Limit
The maximum amount of players that can be present in the Team.
##### Starting Score
This is the score the Team will have at the start of a game.

### Team Events
Team Events are Hooks that are controlled by the Team.

##### Team Joined Event
This is triggered when the player joins the Team.
##### Team Leave Event
This is triggered when the player leaves the Team.
##### Team Win Round Event
This is triggered when the Team wins the current round of a game.
##### Team Win Game Event
This is triggered when the Team wins the game.
##### Team Member Ready Event
This is triggered when the player marks themselves as ready.
##### Team Member Un Ready Event
This is triggered when the player marks themselves as not ready, after marking themselves as ready.
   
### Global Properties
These are properties that control all teams and game conditions.

##### Balance Team Join
With this enabled, players joining will be assigned to the team of the least amount of players.
##### Auto Balance Teams
With this enabled, players my get reassigned to a different team when new players join; regardless of their initial selection.
##### Ready Percentage
The percentage of players that need to be marked as ready before the ready timer is activated.
##### Ready Timer
After the ready percentage has been met, this is the time in seconds before the game starts.
##### Game Controller Type
- Default  
Score based gamemode.
- [Combat System](combat-system.md)  
Elimination based gamemode.

##### Game Type

> As of game version r177 **Single** type games fire both **Round Started**, **Game Started** and **Round Ended**, **Game Ended** events.

- Single  
Each game is one round.
- Rounds  
Each game will consist of the amount of rounds specified in the **Rounds To Win** property.

##### Rounds To Win
The amount of rounds a Team needs to win to end the game.

##### End Condition
- Score  
When a Team accumulates a score defined by the End Score property, the game or round will end.
- Time  
When the time in seconds defined in the End Time property is reached, the game or round will end.
- Time or Score  
When the Time or Score end condition is met, the game or round will end.
- Elimination  
A [Combat System](combat-system.md) only Game Type end condition. When only 1 team is remaining, the game or round will end.
- Time or Elimination  
A [Combat System](combat-system.md) only Game Type end condition. When the Time or Elimination end condition is met, the game or round will end.

##### End Score
The score required to win a round or game.
##### End Time 
The amount of time in seconds before a round or game ends.

### Global Events
These are hooks that are controlled by the Game Instance Controller.

##### Game Started Event
This will trigger when the game starts.
##### Round Started Event
This will trigger when the round starts.
##### Game Ended Event
This will trigger when the game ends.
##### Round Ended Event
This will trigger when the round ends.

### Methods
These are methods that can be accessed using Custom Triggers in the Interactable component. These methods are important in order to use the Game Instance Controller.

##### EnemyScore
Set the enemy score in relation to the local player.
##### JoinTeamAutoBalance
Joins the Team with the lowest amount of players.
##### LeaveTeam
Leaves the current team the player is in.
##### OwnScore
Sets the score of the local player's Team.
##### StartGame
Will start the game regardless of the Ready Percentage or Ready Time properties.
##### ToggleReady
Will mark the local player as ready or not ready.
##### TryJoinTeam
Will try to join the team that is defined by the Index Team Property.
