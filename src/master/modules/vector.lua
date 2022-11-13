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

--- scales the vector with 3 given scales
-- @tparam[opt] number x the `x` scale amount
-- @tparam[opt] number y the `y` scale amount
-- @tparam[opt] number z the `z` scale amount
-- @treturn vector The scaled vector
function methods:scale(x,y,z)
end

--- translates the vector with 3 given positions
-- @tparam[opt] number x the `x` positions amount
-- @tparam[opt] number y the `y` positions amount
-- @tparam[opt] number z the `z` positions amount
-- @treturn vector The translated vector
function methods:translate(x,y,z)
end

--- rotates the vector with either a quaternion or euler angles
-- @tparam[1] number dx the `x` rotation of the vector
-- @tparam[1] number dy the `y` rotation of the vector
-- @tparam[1] number dz the `z` rotation of the vector
-- @tparam[2] number x the quaternion vector `x` position
-- @tparam[2] number y the quaternion vector `y` position
-- @tparam[2] number z the quaternion vector `z` position
-- @tparam[2] number w the rotation along the quaternion vector
-- @treturn vector The rotated vector
function methods:rotate(x,y,z,w)
end

--- creates a 3D direction vector from pitch and yaw
-- @tparam number yaw yaw to make the vector from
-- @tparam number pitch pitch to make the vector from
-- @treturn vector the created vector
function methods:from_pitch_yaw()
end

--- creates a 2D direction vector from yaw
-- @tparam number yaw yaw to make the vector from
-- @treturn vector the created vector
function methods:from_yaw()
end

doc.methods = methods

return doc