---
module: [kind=callbacks] c3d.render
---

This function gets called right before the 3D scene is rendered.
can be used for precalculating data right before frame render
for drawing stuff after the frame render view @{c3d.postrender|the postrender callback}

```lua
function c3d.render()
    print("Hello from render loop")
end
```