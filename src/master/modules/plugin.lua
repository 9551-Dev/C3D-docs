--- the plugin module can be used to load plugins and do thing with them. like reload.
-- @module[kind=modules] c3d.plugin

local doc = {}

--- schedules a plugin to be loaded. in C3D plugins get passed in as a function. should be called in @{c3d.init}
-- @tparam function plugin_function the code of the plugin to be loaded
-- @tparam[opt] any ... additional arguments to pass into the plugin.
function doc.load(plugin_function,...)
end

--- Checks for any new plugins and adds them to the module registry
function doc.register()
end

--- goes thru the plugin registry and loads any plugins found.
function doc.load_registered()
end

--- reruns finalization functions of all loaded plugins.
function doc.refinalize()
end

return doc