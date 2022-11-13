---
module: [kind=misc] geometry_flags
---

## there are several flags you can asign to your geometry, here is a list of them

| Type | Description | Showcase |
| :- | :-: | -: |
| color | The color of this object | `:add_param("color",colors.blue)` |
| texture | The texture to put on this object | `:add_param(c3d.load_texture("test.ppm"))` |
| invert_culling | Inverts the backface culling on this object | `:add_param("invert_culling",true` |
| disable_culling | Disable face culling on this object | `:add_param("disable_culling",true)` |
| pixel_size | The pixel size to render this object with | `:add_param("pixel_size",2)` |
| z_layer | Allows you to force a depth value for all pixels within the geometry | `:add_param("z_layer",-math.huge)` |

##
#
# examples
```lua
local cube = c3d.geometry.cube_simple()
    :add_param("color",colors.red)
:push():reposition(0,0,1)

function c3d.update()
    cube:set_rotation(0,1,0,os.epoch("utc")/10)
end
```