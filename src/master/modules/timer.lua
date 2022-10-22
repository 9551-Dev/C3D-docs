--- a bunch of FPS and time related things
-- @module[kind=modules] c3d.timer

local doc = {}

--- returns the current FPS
-- @return number the current FPS
function doc.getFPS()
end

--- waits for a set ammount of time (allows sub .05s timings)
-- @tparam number time the amount of time to wait in seconds
function doc.sleep()
end

--- returns current epoch time in seconds with ns precision on CraftOS pc
-- @treturn number epoch time in seconds
function doc.get_time()
end

--- returns the average frametime
-- @treturn number average frametime delta
function doc.get_average_delta()
end

--- returns the momentary frametime
-- @treturn number frametime delta
function doc.get_delta()
end

--- internal function. used for updating delta time. gets called between every frame.
-- @treturn number last_delta the last read frame time delta value
function doc.step()
end

return doc