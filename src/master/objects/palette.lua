--- the palette object is used by the image library to apply quantized palettes using tail calls. There isnt much more use for it
-- @module[kind=objects] palette

local doc = {}

--- applies the saved palette to the current screen and returns the texture object it originates from
-- @treturn texture the origin texture of this palette
function doc:apply_palette()
end

--- returns a list with the palette colors
-- @treturn table a list of palette colors
function doc:get()
end

return doc