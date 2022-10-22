--- The scene object is used to interact with the 3D models in the scene. Move them, rotate them, etc.
-- @module[kind=objects] scene_object

local doc = {}
local fields = {}

--- a list that stores the applied shaders to this scene object
local effects = {}

--- stores properties of the scene object, like color. texture. and other flags
local properties = {}

--- Resizes the object by modifying its scaling matrix
-- @tparam number scale_x the `x` axis scale factor
-- @tparam number scale_y the `y` axis scale factor
-- @tparam number scale_z the `z` axis scale factor
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:resize(scale_x,scale_y,scale_z)
end
--- Resizes the object by modifying its scaling matrix
-- @tparam number scale_x the `x` axis scale factor
-- @tparam number scale_y the `y` axis scale factor
-- @tparam number scale_z the `z` axis scale factor
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:set_size(scale_x,scale_y,scale_z)
end

--- Changes the position of the object
-- @tparam number x the `x` position to set the object to
-- @tparam number y the `y` position to set the object to
-- @tparam number z the `z` position to set the object to
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:reposition(x,y,z)
end
--- Changes the position of the object
-- @tparam number x the `x` position to set the object to
-- @tparam number y the `y` position to set the object to
-- @tparam number z the `z` position to set the object to
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:set_position(x,y,z)
end

--- changes the objects rotation with either euler angles or a quaternions
-- @tparam[1] number euler_x the rotation around the x axis in degrees
-- @tparam[1] number euler_y the rotation around the y axis in degrees
-- @tparam[1] number euler_z the rotation around the z axis in degrees
-- @tparam[2] number quat_x the x position of the rotation direction vector
-- @tparam[2] number quat_y the y position of the rotation direction vector
-- @tparam[2] number quat_z the z position of the rotation direction vector
-- @tparam[2] number vec_rot the rotation around the direction vector in degrees
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:set_rotation(...)
end

--- removes the geometry from the scene
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:remove()
end

--- sets the fragment shader for this geometry
-- @tparam function shader the shader function to be set
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:set_frag_shader(shader)
end

--- sets the vertex shader for this geometry
-- @tparam function shader the shader function to be set
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:set_vertex_shader(shader)
end

--- sets the geometry shader for this geometry
-- @tparam function shader the shader function to be set
-- @treturn scene_object the scene object this was used on. used for chaining methods
function doc:set_geometry_shader(shader)
end

--- creates an instantiated copy of this object and returns it
-- @treturn scene_object the instantiated scene object
function doc:clone()
end

--- the ID of this object in the internal data BUS
fields.ID = {}

fields.effects = effects
fields.properties = properties
doc.fields = fields

return doc