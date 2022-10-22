---
module: [kind=event-callbacks] c3d.mousereleased
---

A callback function triggered when the user releases a pressed mouse button
i terms of arguments and how it works it is the same as @{c3d.mousepressed|mousepressed}

## arguments
- **x** [number]: the `x` coordinate of the release
- **y** [number]: the `y` coordinate of the release
- **btn** [number]: the ID of the mouse button that was released
- **click_count** [number]: the amount of releases on this position and button in last 400ms.

```lua
function c3d.mousepressed(x,y,btn,click_count)
    if btn == 0 and click_count == 2 then
        error("released a double left click at "..x..","..y,0)
    end
end
```