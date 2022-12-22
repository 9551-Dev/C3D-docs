--- a loaded texture object.
-- @module[kind=objects] texture

local doc = {}
local fields = {}

--- returns the output of the image decoder. Can be used to for example to get the quantized @{palette|palette object}.
-- @treturn any ouput of the image decoder
function doc:get_out()
end

--- turns the given texture into a @{sprite_sheet|sprite sheet} object.
-- @tparam table settings the settings to split the texture into sprite_sheet with. view @{sprite_sheet_settings|sprite sheet settings}
-- @treturn sprite_sheet the generated sprite_sheet object
function doc:sprite_sheet(settings)
end

--- scales down the given texture by the given factor.
-- @tparam number factor the factor to scale down the texture by.
-- @treturn texture returns self for easy chain calling
function doc:scale_down(factor)
end

--- updates the textures mipmaps
function doc:update()
end

--- sets a pixel in the image
-- @tparam number x the `x` position of the pixel in the texture
-- @tparam number y the `y` position of the pixel in the texture
-- @tparam number c the color to set this pixel to
function doc:set_pixel(x,y,c)
end

--- sets a pixel in the images transparency mask layer
-- @tparam number x the `x` position of the pixel in the texture
-- @tparam number y the `y` position of the pixel in the texture
-- @tparam boolean t transparency state
function doc:set_pixel(x,y,t)
end

--- the data that the decoder has access to and can store data from. It stores the decoders output for example.
fields.c3d = {}

--- stores bunch of metadata and also stores the image as a 2D map of blit colors.
doc.fields = fields

return doc