---
module: [kind=event-callbacks] c3d.mousemoved
---

This callback is a bit more complicated.
As there is no native way to figure out when the mouse has been moved
there is a bit of weirdness happening.
If you arent using CraftOS pc emulator which adds a mouse_moved event
then this will get called whether an event that provides mouse coordinates get triggered,
Like a click/drag/scroll, etc.
If you are on CraftOS pc emulator then this will also happen when the mouse is moved in the window.

## arguments
- **x** [number]: the current `x` position of the mouse
- **y** [number]: the current `y` position of the mouse
- **change_x** [number] the amount the mouse moved in the `x` direction from the last read value
- **change_y** [number] the amount the mouse moved in the `y` direction from the last read value

```lua
function c3d.mousemoved(x,y,change_x,change_y)
    print("The mouse has been moved to " .. x .."," .. y .. " and the position difference is " .. change_x .. "," .. change_y)
end
```