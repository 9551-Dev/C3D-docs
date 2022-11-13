--- The event module is mainly used internally for sharing data across the engine. It is similiar to CCs event system.
-- @module[kind=modules] c3d.event

local doc = {}

--- methods for the event listener object
local event_listener = {}

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

--- Makes a new event listener with a custom filter
-- @param filter the filter used for this event listener, may be a string or a table of event names.
-- @tparam function f function triggered by the event_listener
-- @tparam[opt] string name allows you to select a custom name for the listener
-- @tparam[opt] boolean debug enables a bunch of logs that might be useful 
-- @treturn C3D.EVENT_LISTENER bunch of useful functions you can use to pause/kill/revive and manipulate this listener
function doc.add_listener(filter,f,name,debug)
end

--- kills the current event listener
function event_listener.kill()
end

--- pauses the currently running event listener
function event_listener.pause()
end

--- resumes the currently paused event listener
function event_listener.resume()
end

doc.event_listener = event_listener

return doc