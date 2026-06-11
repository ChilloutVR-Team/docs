# Sending Custom Events to a Script

Sometimes you want to send messages to a script from another script.  We provide a simple way of doing so:

## Sending Script
```lua
global OTHER_SCRIPT = nil
function Start()
    OTHER_SCRIPT = BoundObjects["OtherGameObject"].GetComponent
end

-- See https://docs.chilloutvr.net/cck/lua/api/events/#mouse-events
function OnMouseDown()
    OTHER_SCRIPT.CallReceiverFunction("Click", {Script.Hash})
end
```

## Receiving Script
```lua
function RECEIVE_Click(args)
    print("Got a click!")
end
```
