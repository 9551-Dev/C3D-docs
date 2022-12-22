--- the registry module is ment to be used by plugins for getting registries and making new entires
-- @module[kind=modules] c3d.registry

local doc = {}

--- provides a random table from previous frames which may be used for anything really. Part of C3D table recycling system.
-- @treturn table random table from previous frames.
function doc.load(plugin_function,...)
end

--- returns the module registry
-- @treturn registry module registry
function doc.get_module_registry()
end

--- returns the object registry
-- @treturn registry object registry
function doc.get_object_registry()
end

--- returns the thread registry
-- @treturn registry thread registry
function doc.get_thread_registry()
end

--- creates a new @{registry_entry|registry entry} (UUID4 to name pair) which may be used when writing data to registries
-- @treturn registry_entry created registry entry identifier
function doc.entry()
end

--- allows you to get a table from the C3D table recycling system
-- @tparam[opt] number registry ID of the registry to work with
function doc.get_table(registry)
end

return doc