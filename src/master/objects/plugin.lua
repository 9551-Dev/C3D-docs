--- The plugin object is what you get when you create a new plugin in C3D.
-- @module[kind=objects] plugin

local doc = {}

--- marks this plugin to be registered by C3D
function doc:register()
end

--- changes the load order of this plugin
-- @tparam number load_order load_order to asign to this plugin (higher == loaded latter)
function doc:set_load_order(load_order)
end

--- returns the main C3D data bus
-- @treturn table main C3D data bus
function doc:get_c3d_bus()
end

--- returns the part of the C3D data bus dedicated to this plugin
-- @treturn table data BUS for this plugin
function doc:get_plugin_bus()
end

return doc