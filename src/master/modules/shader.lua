--- the shader module provides a bunch of tools for creating your own custom shaders and also the default shaders so they can be easily integrated
-- @module[kind=modules] c3d.shader

local doc = {}

--- default versions of the shaders
local default = {}

--- some useful fragment shaders
local frag = {}
--- some useful vertex shaders
local vertex = {}

--- the default vertex shader
-- @tparam number x x of the vertex to be transformed by the shader
-- @tparam number y y of the vertex to be transformed by the shader
-- @tparam number z z of the vertex to be transformed by the shader
-- @tparam number w w of the vertex to be transformed by the shader
-- @tparam table properties properties of the object this vertex belongs to
-- @tparam table scale the scale matrix of the object this vertex belongs to
-- @tparam table rot the rotation matrix of the object this vertex belongs to
-- @tparam table pos the translation matrix of the object this vertex belongs to
-- @tparam table per the current perspective matrix present in the scene
-- @tparam table cam_transform the generic transform of the current camera
-- @tparam table cam_position the position transform of the current camera
-- @tparam table cam_rotation the rotation transform of the current camera
-- @treturn number x of the transformed vertex
-- @treturn number y of the transformed vertex
-- @treturn number z of the transformed vertex
-- @treturn number w of the transformed vertex
function default.vertex(new_vertice,properties,scale,rot,pos,per,cam_transform,cam_position,cam_rotation)
end

--- the default fragment shader
-- @tparam table px_info the pixels information given from the rasterizer
-- @treturn number the color to set this pixel to
-- @treturn boolean whether should this pixel be made transparent
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

--- makes this object not be affected by its position and camera position. only rotation. ideal for skyboxes !
-- @tparam number x x of the vertex to be transformed by the shader
-- @tparam number y y of the vertex to be transformed by the shader
-- @tparam number z z of the vertex to be transformed by the shader
-- @tparam number w w of the vertex to be transformed by the shader
-- @tparam table properties properties of the object this vertex belongs to
-- @tparam table scale the scale matrix of the object this vertex belongs to
-- @tparam table rot the rotation matrix of the object this vertex belongs to
-- @tparam table pos the translation matrix of the object this vertex belongs to
-- @tparam table per the current perspective matrix present in the scene
-- @tparam table cam_transform the generic transform of the current camera
-- @tparam table cam_position the position transform of the current camera
-- @tparam table cam_rotation the rotation transform of the current camera
-- @treturn number x of the transformed vertex
-- @treturn number y of the transformed vertex
-- @treturn number z of the transformed vertex
-- @treturn number w of the transformed vertex
function vertex.skybox()
end

doc.default = default
doc.frag = frag
doc.vertex = vertex

return doc