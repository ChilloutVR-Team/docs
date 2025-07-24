# CVR Spawnable <div class="whitelisted" data-list="P"></div>
This is the main component for a **Spawnable** or **Prop**. This is required for setup and uploading the Prop.

## Properties

##### Spawn Height
Defines a high offset for the Prop to spawn at.

## Sync Values
You can define synced values for Props. 

These can be set to be updated by different sources on the component or by using SpawnableTriggers.

These values will be handled as float, but can be written to an Animator also in the form of Integers and Booleans.

## Sub Sync Transforms
You can define child Transforms of the Prop here. You can define which parts of the transform should be synced.
You can select the positional and rotational axis here. 

When Sync Precision is set to Full, it will sync the value in word space and uses one full Sync Value.

When set to Half or Quarter, the transform will be synced relative to its parent element inside the set Sync Boundary.
When using Half it will spread 65,536 possible positions in that Boundary. When using Quarter, it will only have 
256 possible values in that range.