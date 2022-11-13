---
module: [kind=callbacks] c3d.on_event
---

A function that gets ran when an event is fired within CraftOS and gets provided with the unpacked event data.

```lua
function c3d.on_event(...)
    local name,a,b,c,d = ...
    error("Event " .. name .. " was fired")
end
```