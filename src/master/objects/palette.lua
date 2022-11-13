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

--- adds another palette to the current one
-- @tparam palette to_add palette object to add to this
-- @treturn palette self. so these methods can be chain called
function doc:add(to_add)
end

--- quantizes the palette using a given amount (output colors are gonna be 2^quantize_amount)
-- @tparam number quantize_amount quantization level
-- @treturn palette self. so these methods can be chain called
function doc:quantized(quantize_amount)
end

return doc