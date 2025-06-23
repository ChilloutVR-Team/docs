# Funny Cube

The following script will make the GameObject it's embedded in rotate on a random axis.  It will teleport to a new position and select a different rotation axis every few seconds.  It will also sync every frame.

```lua
-- From scripting team meeting notes:
--   First use case: Cubespin with random start position, random direction, resets after 10s.
UnityEngine = require "UnityEngine"
CCKComponents = require "CVR.CCK"

-- LuaLS/LuaCATS annotations start with three dashes (---)

--- @type UnityEngine.Time
Time = UnityEngine.Time

--- @type UnityEngine.Random
UnityRandom = UnityEngine.Random

ORIGINAL_POSITION = UnityEngine.NewVector3(0, 0, 0)
ROTATION_AXIS = nil

nextBehaviourChange = 0.0

function Start()
    -- Seed random noise.
    math.randomseed(math.floor(Time.time))

    -- Print "Hello world!" to Debug console.
    print("Hello world!")

    -- Record original position.
    ORIGINAL_POSITION = UnityEngine.NewVector3(gameObject.transform.position.x, gameObject.transform.position.y,
        gameObject.transform.position.z)
end

function Update()
    if Time.realtimeSinceStartup > nextBehaviourChange then
        i = math.random(1, 6)
        if i == 1 then
            ROTATION_AXIS = UnityEngine.NewVector3(1, 0, 0)
        elseif i == 2 then
            ROTATION_AXIS = UnityEngine.NewVector3(0, 1, 0)
        elseif i == 3 then
            ROTATION_AXIS = UnityEngine.NewVector3(0, 0, 1)
        elseif i == 4 then
            ROTATION_AXIS = UnityEngine.NewVector3(-1, 0, 0)
        elseif i == 5 then
            ROTATION_AXIS = UnityEngine.NewVector3(0, -1, 0)
        elseif i == 6 then
            ROTATION_AXIS = UnityEngine.NewVector3(0, 0, -1)
        end

        gameObject.transform.position = ORIGINAL_POSITION + UnityRandom.insideUnitSphere
        nextBehaviourChange = Time.realtimeSinceStartup + 10.0
    end
    
    if ROTATION_AXIS ~= nil then
        gameObject.transform.Rotate(ROTATION_AXIS)
    end

    --- @type CVR.CCK.CVRSpawnable
    spawnable = gameObject.GetComponentInParent("ABI.CCK.Components.CVRSpawnable")
    if spawnable ~= nil then
        spawnable.ForceUpdate()
    end
end
```