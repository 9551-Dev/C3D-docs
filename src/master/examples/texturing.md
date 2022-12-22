---
module: [kind=examples] example.texturing
---
## here i will show how to put the CC:T logo (`https://tweaked.cc/pack.png`) on a spinning cube
@{c3d.graphics|the graphics module}

:::warning using proper image format
for pngs and other full color images, right now C3D supports the .ppm format. to get this format you can put your image into gimp
and export it as a .ppm file natively. Make sure to **NOT** use ascii version.

other supported formats are:
    .ppm
    .cimg2 (crappy image 2)
    .nfp   (Nitrogen fingers paint)
:::

#

```lua
local cube = c3d.geometry.cube_simple()

function c3d.load()
    cube:add_param("texture",c3d.graphics.load_texture("cct.ppm")) -- loads the texture and adds the texture flag to the cube
    cube = cube:push():reposition(0,0,1) -- pushes the cube to the scene and saves the scene object, also repositions it to the front of the camear
end

function c3d.update()
    cube:set_rotation(0,1,0,os.epoch("utc")/10) -- spins the cube along the y axis
end
```