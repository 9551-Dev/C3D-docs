--- The geometry module is used for getting default basic shapes. Manipulating geometries and meshes. and loading models.
-- @module[kind=modules] c3d.geometry

local doc = {}

--- returns the mesh for a simple side UV mapped cube, in the form of a @{generic_shape,generic_shape} object
-- @tparam[opt] number scale_modifier the scale multiplier of the meshes size
-- @return generic_shape
function doc.cube_simple(scale_modifier)
end

--- returns the mesh for a UV mapped cube which can have sides textured individualy, in the form of a @{generic_shape,generic_shape} object
-- @tparam[opt] number scale_modifier the scale multiplier of the meshes size
-- @return generic_shape
function doc.cube_skinned(scale_modifier)
end

--- loads the model from the given model file path and returns a @{generic_shape,generic_shape} object
-- @tparam string path the path to the model file including the file extension ("example.obj")
-- @return generic_shape
function doc.load_model(path)
end

return doc