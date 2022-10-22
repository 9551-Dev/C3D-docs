---
module: [kind=event-callbacks] c3d.keypressed
---

A callback function which gets called when you press key on the keyboard
or when you have the key held down this gets triggered repeatedly

## arguments
- **key** [string]: a string representing which key is pressed
- **is_held** [boolean]: whether the key is held down

```lua
function c3d.keypressed(key,is_held)
    if key == "q" and is_held then
        error("held down the 'q' key",0)
    end
end
```