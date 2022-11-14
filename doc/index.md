:::warning
C3D while it has been released there may still be instabilities that i am not aware off!
if you find any please contact me so they can be resolved. 

discord: 9551Dev#5787
:::

C3D is an advanced 3D Renderer for ComputerCraft.
It provides the ability to load .obj files and apply textures.

How to download: `wget run https://github.com/9551-Dev/C3D/raw/master/installer.lua`

actual usage:
- after you run the installer a new folder called libC3D and a c3d.lua file will be created.
libC3D is a folder containing essential core files and the actual libraries code
while c3d.lua is sort of a "client" to run your programs using C3D.

- to run a program type `c3d <foldername>`
this folder must contain a main.lua file with your code and other stuff

- to have a program run C3D without having it be in a folder you can
require c3d.lua and run the `run` function

```lua
local C3D = require("c3d")
C3D.run(function()
    -- awesome code
end)
```

Examples will be found in the `examples` directory, currently still working on them.

![3D shrek model with a texture](shrek.png "3D shrek model with a texture")
