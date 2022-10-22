---
module: [kind=event-callbacks] c3d.keyreleased
---

Happens when a keyboard key has been released.

## arguments
- **key** [string]: string representation of the key

```lua
function c3d.keyreleased(key)
    if key == "h" then
        error("Let of the 'h' key",0)
    end
end
```