--- the raw_mesh object is a convinient tool for making optimized meshes for C3D.
-- @module[kind=objects] raw_mesh

local doc = {}

--- adds a new triangle into the mesh with given UV coordinates and more.
-- @tparam table vertices list of 3 vertices ({x,y,z})
-- @tparam[opt] table uvs list of 3 UV coordinates for the given vertices ({u,v})
-- @tparam[opt] texture texture optional texture. used for per triangle texturing.
-- @treturn raw_mesh returns self for chain calling methods
function doc:add_triangle(vertices,uvs,texture)
end

--- builds and returns the mesh created. may be loaded using the @{c3d.scene|scene module}
-- @treturn table the geometry table to be loaded.
function doc:make_geometry()
end

return doc