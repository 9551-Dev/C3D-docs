--- the pipe module is used to modify and manipulate the rendering pipeline by adding or changing functions inside of it
-- @module[kind=modules] c3d.pipe

local doc = {}

--- allows modifying the rendering pipeline, including changing order and adding your own already added types to it
-- @tparam[1] ... table the table containing the function to be set as the pipeline steps
-- @tparam[2] ... function the functions to be set as the pipeline steps
-- @tparam[3] ... string a special string containing the name of the rendering steps separated by `->`
-- @usage set the rendering pipeline to default
-- ```lua
-- function c3d.load()
--     c3d.pipe.set("vertex -> vertex_shader -> triangle_asm -> geometry_shader")
-- end
-- ```
function doc.set(...)
end

--- adds a step into the rendering pipeline (unused by default)
-- @tparam string name the name of the pipeline step
-- @tparam function the function to be ran in the pipeline
function doc.add_type(name,func)
end

--- returns the inicializer step of the pipeline
-- @treturn function vertex inicializer pipe
function doc.vertex()
end

--- returns the default vertex shader step of the pipeline
-- @treturn function vertex shader pipe
function doc.vertex_shader()
end

--- returns the default triangle_asm step of the pipeline
-- @treturn function triangle assembler pipe
function doc.triangle_asm()
end

--- returns the default geometry shader step of the pipeline
-- @treturn function geometry shader pipe
function doc.geometry_shader()
end

return doc