--- the thread module is used for multitasking and sharing data across "channels"
-- IMPORTANT: you can use the @{c3d.threaderror|threaderror callback} for handling errors
-- @module[kind=modules] c3d.thread

local doc = {}

--- the thread object
local thread = {}

--- the channel object. a channel is basically a queue which you can add stuff into to share across your program, the values in the queue also get ids asigned
local channel = {}

--- if the thread happened to error this returns the error message
-- @treturn any msg thread error message
function thread:get_error(msg)
end

--- checks if the thread is currently running
-- @treturn boolean true if thread is running
function thread:is_running()
end

--- starts the execution of this thread
function thread:start()
end

--- waits until the thread finishes execution
function thread:wait()
end

--- completely clears the data queue of the channel
function channel:clear()
end

--- returns a value from the queue. if there isnt one it waits for one or for a timeout to happen
-- @tparam number timeout the maximum time to wait for data in the queue
-- @treturn any the data removed from the queue
function channel:demand(timeout)
end

--- returns the amount of things stored in the queue
-- @treturn number number of things in the queue
function channel:get_count()
end

--- checks if a specific value in the queue has been read already
-- @tparam string ID the queue ID of the value
-- @treturn boolean whether the value has been read yet
function channel:has_read(ID)
end

--- reads a value from the queue without removing it
-- @treturn any data read from the queue
function channel:peek()
end

--- removes a value from the queue and returns it
-- @treturn any data remove from the queue
function channel:pop()
end

--- adds a value to the queue of the channel
-- @tparam any value the value to store in the queue
-- @treturn string the ID of this value in the queue
function channel:push(value)
end

--- adds a value to the queue of the channel and waits for that value to be read (pop'ed) or for the timeout to go off
-- @tparam any value the value to store in the queue
-- @tparam number timeout the timeout to set for this supply
-- @treturn boolean whether the timeout has gone off
function channel:supply(value,timeout)
end

--- creates a new thread object
-- @tparam[1] string code the code to create the thread from in a string form
-- @tparam[2] string path the path to the file to load the code into the thread from
function doc.new_thread(code)
end

--- creates a new channel object without a set name
-- @treturn channel the finished channel object
function doc.new_channel()
end

--- returns a channel object for a given name. makes one if it doesnt exist.
-- @tparam string name the name of the channel
-- @treturn channel the channel object
function doc.get_channel(name)
end

doc.thread = thread
doc.channel = channel

return doc