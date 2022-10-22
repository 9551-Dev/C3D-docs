--- The graphics module is used for image and rendering settings related things, such as texture loading and starting frame renders
-- @module[kind=modules] c3d.graphics

local doc = {}

--- loads a texture from a file with given @{texture_load_settings|settings} and returns the texture object.
-- @see texture_load_settings
-- @see example.texturing
function doc.load_texture(path,settings)
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

return doc