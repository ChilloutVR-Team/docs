# Spawnable Pickup Marker <div class="whitelisted" data-list="W"></div>

Marks a GameObject as a pickup for a spawnable.
A pickup marker creates a small world-space UI, sometimes called a **pedestal**, that lets players view and select spawnables from within the world.

When initialized, it spawns a panel showing:

- The spawnable's preview image and name
- The author's name
- A **Select** button to switch to the spawnable
- A **Details** button to open the spawnable's detail page in the Main Menu

---

## Fields

| Name         | Type     | Description        |
|--------------|----------|--------------------|
| `spawnableGuid` | `string` | The spawnable's GUID. |

---

## Methods

| Name                      | Description                                                                                                                   |
|---------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| `ShowSpawnableDetailsPage()` | Opens the spawnable's detail page in the Main Menu.                                                                              |
| `ChangeSpawnable()`          | Changes the player's spawnable to the target one.                                                                                |
| `TrySetGuid(string)`      | Attempts to update the marker's spawnable GUID. Returns false if the GUID is not valid or the pickup marker is still processing. |
| `SetGuid(string)`         | Legacy method which now calls `TrySetGuid`. This method does not return if it was a success.                                  |

---

!!! tip "Show Details Page Rate Limit"
    The `ShowSpawnableDetailsPage()` method is rate-limited to one call per three seconds to prevent abuse.
    This rate limit is **global** and applies to all components that can open the details page.
    (CVRInteractable, Scripting API, other pickup markers, etc.)