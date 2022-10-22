---
module: [kind=examples] example.shader
---

## shaders can be quite tricky but are very powerful once you learn to use them.
## all of these will assume you have this as your base code
```lua
local cube = c3d.geometry.cube_simple():push():reposition(0,0,1)

function c3d.update()
    cube:set_rotation(0,1,0,os.epoch("utc")/20)
end
```

# vertex
## wave effect
```lua
cube:set_vertex_shader(function(vertex,...)
    local t = os.epoch("utc")

    vertex[2] = vertex[2] + math.sin(vertex[1]*10+t/200)/5 -- adds the wave effect to the height of the vertex offset by the x of it and time

    return c3d.shader.default.vertex(vertex,...) -- applies the default transforms to the modified vertex
end)
```

# geometry
## triangles colored by their index
```lua
cube:set_geometry_shader(function(triangle,index)
    function triangle.fs() -- modifies the triangles fragment shader to return the color of the triangle dependent on the index
        return 2^(index%15)
    end

    return triangle -- returns modified triangle
end)
```


# fragment
## random noise fragment shader
```lua
cube:set_frag_shader(function(pixel_data)
    return 2^(math.random(0,1)*15)
end)
```

## CC color gradient made using a fragment and vertex shader
```lua
local random_color_lookup = setmetatable({},{__index=function(this,index)
    local c = math.random(0,15)
    rawset(this,index,c)
    return c
end}) -- a special table which has "infinite" amount of random colors on its indices

cube:set_vertex_shader(function(vertex,...)
    local transformed_vertex = c3d.shader.default.vertex(vertex,...)

    transformed_vertex.frag = {epic_color=random_color_lookup[vertex.index]} -- adds the color to be interpolated between the vertices

    return transformed_vertex
end)

cube:set_frag_shader(function(pixel_data)
    return 2^math.ceil(math.min(math.max(pixel_data.epic_color,0),15)) -- gets the interpolated fragment passed from the vertex shader and clamps it
end)
```