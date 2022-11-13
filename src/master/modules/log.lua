--- The log module can be used to interact with the C3D log which is saved in libC3D/c3d.log
-- @module[kind=modules] c3d.log
--[[
    :::tip
        If you want more details out of logs you can @{enabling_debug|enable debug mode}
    :::
]]

local doc = {}
--- bunch of log types
local types = {}

--- adds a new string into the log
-- @tparam string str string to add to log
-- @tparam[opt] number type log type
function doc:add(str,type)
end

--- dumps the log into the log file. (libC3D/c3d.log)
function doc:dump()
end

--- adds all the data currently in the data bus (under the debug type)
function doc:bus_state()
end

--- writes a table into the log
-- @tparam table tbl table to log
-- @tparam[opt] number type
function doc:table()
end

--- returns the access point to the internal logging api
-- @treturn log_api internal log api
function doc:get_log()
end

---
types.success = {}
---
types.warn = {}
---
types.error = {}
---
types.fatal = {}
---
types.info = {}
---
types.debug = {}

doc.types = types
return doc