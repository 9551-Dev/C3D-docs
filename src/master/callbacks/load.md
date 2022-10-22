---
module: [kind=callbacks] c3d.load
---

A function that gets ran the moment the main loop of the 3D engine starts
you can use it to load assets/models/generate data or whatever you need

:::tip Sending data from load to main loop
you can use the @{c3d.thread|thread} library to make a channel to send data
from load to the main loop instead of using upvalues
:::

```lua
local tex
function c3d.load()
    tex = c3d.graphics.load_texture("shrek.ppm")
end
```

or using @{c3d.thread|channels}
```lua
function c3d.load()
    local load_data = {
        tex = c3d.graphics.load_texture("shrek.ppm")
    }
    c3d.thread.get_channel("load_channel"):push(load_data)
end

function c3d.update()
    local loaded_data = c3d.thread.get_channel("load_channel"):peek() -- uses peek so the values stay in the channel
end
```