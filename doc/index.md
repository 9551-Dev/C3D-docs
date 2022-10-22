:::warning
C3D is **HIGHLY** experimental and is in early stages
of development, only use if you know what you are doing.
:::

C3D is an advanced 3D Renderer for ComputerCraft.
It provides the ability to load .obj files and apply textures.

How to download: `wget run https://github.com/9551-Dev/C3D/raw/master/installer.lua`

actual usage:
- after you run the installer a new folder called C3D and a c3d.lua file will be created
C3D is a folder containing essential core files and the actual libraries code
while c3d.lua is sort of a "client" to run your programs using C3D.

- to run a program type `c3d <foldername>`
this folder must contain a main.lua file with your code and other stuff

- to have a program run C3D without having it be in a folder you can
require C3D.lua and run the `run` function

```lua
local C3D = require("c3d")
c3d.run(function()
    -- awesome code
end)
```

Examples will be found in the `examples` directory, currently still working on them.

![3D shrek model with a texture](shrek.png "3D shrek model with a texture")
