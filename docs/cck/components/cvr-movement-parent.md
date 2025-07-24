# CVR Movement Parent <div class="whitelisted" data-list="AWP"></div>

Makes the player stick to an object or platform and inherit its movement.

---

## Fields

| Name                    | Type                          | Description                                                                                  |
|-------------------------|-------------------------------|----------------------------------------------------------------------------------------------|
| `orientationMode`       | `OrientationMode`             | Determines if the player rotates with the parent object.                                     |
| `velocityInheritance`   | `VelocityInheritanceMode`     | Controls how the player inherits velocity from the platform.                                 |
| `applyForcesFromPlayers`| `bool`                        | If true, players will apply force onto the parent's rigidbody during movement interactions. |

---

## Enums

### VelocityInheritanceMode

| Name        | Value | Description                                                                          |
|-------------|-------|--------------------------------------------------------------------------------------|
| `None`      | `0`   | No velocity is inherited.                                                            |
| `Parent`    | `1`   | Velocity is sampled from the platforms transform position. This is legacy behaviour. |
| `Reference` | `2`   | Velocity is sampled from the point which the player is standing on the platform.     |

### OrientationMode

| Name              | Value | Description                                                |
|-------------------|-------|------------------------------------------------------------|
| `Disabled`        | `0`   | The player does not rotate with the parent object.         |
| `RotateWithParent`| `1`   | The player inherits the parent's rotation movement.        |

---

!!! tip "When To Move Platforms"
    It is best to configure the platform to move in Fixed Update if using Scripting or if using an Animator setting it to update with physics.
    The local player character controller simulates in physics update, so you will have visual jitter if your platform moves outside of physics update.

!!! tip "Player Relative Sync"
    When a player is standing on a platform remote users will see the player anchored relative to the platform.
    This is done to prevent the player from visually appearing behind the platform when it moves.
    You can use this mechanic to purposefully de-sync player positions across clients.

!!! warning "Using On Local Avatar"
    This component is disabled on the locally worn avatar to prevent issues with player physics and movement. 
    Remote users will still see the component and interact with it as expected.