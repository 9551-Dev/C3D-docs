--- few C3D system related functions
-- @module[kind=modules] c3d.sys

local doc = {}

--- returns the internal data sharing BUS
-- @treturn table the data bus
function doc.get_bus()
end

--- sets the FPS limit for C3D
-- @tparam number limit the FPS limit to set
function doc.fps_limit(limit)
end

--- allows you to modify environmental overrides put in place but either other pieces of code or plugins.
-- @tparam string type the callback to override
-- @param value value to set the callback to (must be possitive for the override to work)
function doc.environmental_override(type,value)
end

return doc