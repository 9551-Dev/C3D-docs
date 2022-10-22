--- The event module is mainly used internally for sharing data across the engine. It is similiar to CCs event system.
-- @module[kind=modules] c3d.event

local doc = {}

--- clears the event queue
function doc.clear() end

--- returns an iterator function to iterate everything in the event queue
-- @treturn function event queue iterator function
function doc.poll() end

--- adds an event to the queue
-- @param ... the event data
function doc.push(...) end

--- triggers the quit event with the given status code
-- @tparam number status the exist code to trigger the event with
function doc.quit(status) end

--- returns event from the queue, if there isnt one it waits for one
-- @return ... caught events data
function doc.wait() end

return doc