# CCK 3.3 Release Notes

Future-proofing of content
This version of the cck will include compiled versions of your shaders that support single-pass instanced rendering. This is necessary to support newer versions of unity. For further details read the FAQ below the patchlogs.

## GameKit System

We added the first parts of the GameKit to the cck. The following components were added:

- CombatSystem: Having this component in a world, lets you configure a health pool for the player. There are 3 types of health you can use and setup automatic regeneration as well
- ObjectHealth: This component lets you define a health pool for an object
- Damage: This component lets you define damage that gets dealt to a player or an object. This component works with triggers and particle systems
- GunController: This component enables you to set up a simple gun system, that handles magazines, firing modes, and reloading. It works in conjunction with a particle system and shots are synced over the network separately to increase network accuracy
- GameInstanceController: This component allows you to create games in your world. It manages teams and team joins, provides a system to ready up, and handles rounds and scores. You will be able to have an automatic scoring system using the combat system or add and subtract scores from teams manually. You can have multiple game controllers in a world
- ScoreBoardController: This component allows you to display specific information of a GameInstanceController in unity UI text elements, like team members, team scores current state of the game, and current game related timers

## New Features

- CVRMovementParent: This component works together with the new movement system, to fix the player to a moving object. This component needs a collider in order to work
- The Interactable now has an operation to delete GameObjects
- When spawning an object with the interactable operation type SpawnObject you can now enable the option to automatically be picked up or attac...