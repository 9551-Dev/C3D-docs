---
module: [kind=callbacks] c3d.render
---

This function gets called right before the 3D scene is drawn but after the 3D engine finishes a frame.
can be used for precalculating data right before frame render.
May also be used to add data to the pixel buffer right before it gets displayed using the {c3d.graphics,graphics module}
for drawing stuff after the frame render view @{c3d.postrender|the postrender callback}

```lua
function c3d.render()
    print("Hello from render loop")
end
```