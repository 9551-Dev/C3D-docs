---
module: [kind=callbacks] c3d.update
---

This callback should be used for updating the sceene and states of it.
In a way it is similiar to @{c3d.render|render} but it gets called even before
that, and is provided with the average frame time.

## arguments
- **dt** [number]: delta time, average frametime of the last few frames

```lua
local x = 0
function c3d.update(dt)
    epic_cube:reposition(x,0,1)

    if c3d.keyboard.is_down("a") then x = x - 1*dt end
    if c3d.keyboard.is_down("d") then x = x + 1*dt end
end
```