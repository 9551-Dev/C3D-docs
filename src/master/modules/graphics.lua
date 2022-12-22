--- The graphics module is used for image and rendering settings related things, such as texture loading and starting frame renders
-- @module[kind=modules] c3d.graphics

local doc = {}

--- loads a texture from a file with given @{texture_load_settings|settings} and returns the texture object.
-- @tparam string path the path to the texture file
-- @tparam table settings the settings to load the texture with
-- @return texture object
-- @see texture_load_settings
-- @see example.texturing
function doc.load_texture(path,settings)
end

--- loads a material from a file with given given @{texture_load_settings|texture load settings} and returns the decoded material.
-- @tparam string path the path to the material file
-- @tparam table settings the settings to load the textures with
-- @return material object
function doc.load_material(path,settings)
end

--- clears the screen pixel buffer with set color
-- @tparam number color the color to clear with
function doc.clear_buffer(color)
end

--- issues a command to the rasterizer to render a frame
function doc.render_frame()
end

--- returns the current set background color
-- @treturn number the current background color
function doc.get_bg()
end

--- sets the background color of the render
-- @tparam number color the background color
function doc.set_bg(color)
end

--- returns the screen with and height in pixels
-- @treturn number width
-- @treturn number height
function doc.get_resolution()
end

--- allows you to change the pixel size and the resolution of the render (objects can use their own)
-- @tparam number pixel_size the pixel size to use for the render
function doc.set_pixel_size(pixel_size)
end

--- gives you a bunch of data about the C3D renderer. And the rendering pipeline. Mainly rendering stats but some more too.
-- @treturn table engine stats
function doc.get_stats()
end

--- allows you to disable and enable the default automatic resizing system. note this does not affect the {c3d.resize|resize callback}
-- @tparam boolean enable the state to put the resizing thread to
function doc.autoresize()
end

--- changes the size C3D is rendering at
-- @tparam[opt] number width the width of the render
-- @tparam[opt] number height the height of the render
function doc.set_size(width,height)
end

--- changes the terminal object C3D is managing
-- @tparam terminal_object term the terminal object to switch to
-- @tparam[opt] boolean block_resize allows you to have C3D not automatically resize to this terminal
function doc.change_terminal(term,block_resize)
end

--- writes a pixel to the screen buffer. Should be getting ran from @{c3d.render}
-- @tparam number x x position of the pixel in the buffer
-- @tparam number y y position of the pixel in the buffer
-- @tparam number color color to set the pixel in the buffer to
function doc.set_pixel(x,y,color)
end


--- creates a blank texture with the given size
-- @tparam number width width of the texture
-- @tparam number height height of the texture
-- @tparam[opt] settings the image creation settings to create this texture with
function doc.blank_texture(width,height,settings)
end

--- allows you to force draw a frame
function doc.generate_frame()
end

return doc