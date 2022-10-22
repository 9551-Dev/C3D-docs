---
module: [kind=event-callbacks] c3d.wheelmoved
---

A callback function which gets ran when you scroll the mouse wheel.
It also provides **horizontal** scrolling functionality by holding shift.

## arguments
- **direction_x** [number]: the scroll direction in the `x`
- **direction_y** [number]: the scroll direction in the `y`

```lua
local y_scroll = 0
function c3d.wheelmoved(dx,dy)
    y_scroll = y_scroll + dy
end
```