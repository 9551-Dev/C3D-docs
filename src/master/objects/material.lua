--- allows you to load and decode .mtl files which can then be applied to models
-- @module[kind=objects] material

local doc = {}
local fields = {}

--- allows you to grab any of the preloaded textures from the selected material type (can be used to manage @{texture|textures})
-- @tparam string material The material type to find loaded texture for
-- @treturn texture the texture loaded for the given material type
function doc:get_texture(mtl)
end

--- All of the preloaded textures for the material.
fields.loaded_textures = {}

--- stores all of the material data
doc.fields = fields

return doc