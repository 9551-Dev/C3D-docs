---
module: [kind=event-callbacks] c3d.mousepressed
---

A callback function which gets ran when any mouse button is pressed
you can also easily use it to handle things like double clicks,
as it provides a click count on that button in the last 400ms

## arguments
- **x** [number]: the `x` coordinate of the click
- **y** [number]: the `y` coordinate of the click
- **btn** [number]: the ID of the mouse button that was pressed
- **click_count** [number]: the amount of clicks on this position and button in last 400ms, used for detecting double clicks, etc.

```lua
function c3d.mousepressed(x,y,btn,click_count)
    if btn == 0 and click_count == 2 then
        error("Double left clicked on "..x..","..y,0)
    end
end
```