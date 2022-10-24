--- the vector library adds a bunch of common vector operations along with metatable methods to make them convinient. They are the same as https://tweaked.cc/module/vector.html by my lib is cleaner implementation.
-- @module[kind=modules] c3d.vector

local doc = {}

--- a bunch of operations you can do with the vector object (this does not show all but the most notable ones)
local methods = {}

--- returns a new vector object given the coordinates
-- @tparam[opt] number x the `x` position of the vector
-- @tparam[opt] number y the `y` position of the vector
-- @tparam[opt] number z the `z` position of the vector
-- @treturn vector the constructed vector object
function doc.new(x,y,z)
end

--- gets the cross product between 2 vectors
-- @tparam vector vec the vector to get the cross product of along with this one
-- @treturn vector The cross product of this and inputed vector
function methods:cross(vec)
end

--- finds the dont product of 2 vectors
-- @tparam vector vec the vector to get the dot product of along with this one
-- @treturn number The dot product of the two vectors
function methods:dot(vec)
end

--- normalizes a vector by dividing all of its axis by its lenght
-- @treturn vector The normalized vector
function methods:normalize()
end

doc.methods = methods

return doc