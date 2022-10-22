---
module: [kind=callbacks] c3d.postrender
---

This callback function can be used to draw some overlay on top of the rendered screen.
It gets called directly after the frame has been rendered. so you can draw anything ontop.
Gets the terminal object as an argument.

- used for overlays
- gets ran after the scene has been rendered
- provides term object

## arguments
- **term** [table]: The terminal object that C3D runs inside of

```lua
function c3d.postrender(term)
    term.setCursorPos(1,1)
    term.write("FPS: " .. c3d.timer.getFPS())
end
```