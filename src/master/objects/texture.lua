--- a loaded texture object.
-- @module[kind=objects] texture

local doc = {}
local fields = {}

--- returns the output of the image decoder. Can be used to for example to get the quantized @{palette|palette object}.
-- @treturn any ouput of the image decoder
function doc:get_out()
end

--- the data that the decoder has access to and can store data from. It stores the decoders output for example.
fields.c3d = {}

--- stores bunch of metadata and also stores the image as a 2D map of blit colors.
doc.fields = fields

return doc