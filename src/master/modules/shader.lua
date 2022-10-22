--- the shader module provides a bunch of tools for creating your own custom shaders and also the default shaders so they can be easily integrated
-- @module[kind=modules] c3d.shader

local doc = {}

--- default versions of the shaders
local default = {}

--- some useful fragment shaders
local frag = {}

--- the default vertex shader
-- @tparam table new_vertice the vertex to be transformed by the shader
-- @tparam table properties properties of the object this vertex belongs to
-- @tparam table scale the scale matrix of the object this vertex belongs to
-- @tparam table rot the rotation matrix of the object this vertex belongs to
-- @tparam table pos the translation matrix of the object this vertex belongs to
-- @tparam table camera the current camera object in the scene
-- @tparam table per the current persperctive matrix present in the scene
-- @treturn table the newly transformed vertex. yay !
function default.vertex(new_vertice,properties,scale,rot,pos,camera,per)
end

--- the default fragment shader
-- @tparam table px_info the pixels information given from the rasterizer
-- @treturn number the color to set this pixel to
function default.frag(px_info)
end

--- the default geometry shader
-- @tparam table triangle the triangle inputed into the shader
-- @treturn table the returned triangle from the shader
function default.geometry(triangle)
end

--- white noise fragment shader
-- @treturn number random color (black/white)
function frag.noise()
end

doc.default = default
doc.frag = frag

return doc