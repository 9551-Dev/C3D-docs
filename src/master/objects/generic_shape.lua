--- definition of a 3D geometry along with some methods
-- @module[kind=objects] generic_shape

local doc = {}

--- adds a new flag to the geometry
-- @tparam string type the flag type to set on the object
-- @tparam any data the data to set the flag to
-- @treturn the generic_shape object, used for tailing methods 
function doc:add_param(type,data)
end

--- another name for @{add_param|add_param}
-- @tparam string type the flag type to set on the object
-- @tparam any data the data to set the flag to
-- @treturn the generic_shape object, used for tailing methods 
function doc:add_prop(typem,data)
end

--- adds the geometry to the scene and returns the new @{scene_object|scene object}
-- @treturn scene_object the scene_object
function doc:push()
end

return doc