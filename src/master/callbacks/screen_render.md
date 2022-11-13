---
module: [kind=callbacks] c3d.screen_render
---

Allows you to set your own way of drawing the rendered scene to the screen. default uses drawing chars to draw the scene.
You can override this for example to have it use CrafOS-pc graphics mode. or perhaps save the render into a file !.

## arguments
- **term** [terminal object]: The terminal object C3D is currently managing.
- **w** [number]: Width of the render
- **h** [number]: Height of the render
- **buffer** [table]: The rendered scene saved in a 2D table (buffer[y][x] = color (2^(0-15)))

```lua
function c3d.screen_render(term,w,h,buffer)
    print("Hello from screen renderer!")
end
```
(will result in a black screen since the scene is not being drawn to it.)