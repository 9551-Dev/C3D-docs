--- the object you get when you import a model from a model file.
-- @module[kind=objects] imported_model

local doc = {}

--- the fields stored by this object
local fields = {}

--- returns a new @{generic_shape|generic shape} object. Also scales it with give amount before making the generic_shape
-- @tparam[opt] number scale_mult scale multiplier for the object
-- @treturn generic_shape the generic_shape object generated
function doc:make_geometry(scale_mult)
end

--- the data of the loaded geometry. @{geometry_table_format|geometry_table_format}
fields.data = {}

doc.fields = fields

return doc