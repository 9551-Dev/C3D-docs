---
-- @module[kind=modules] c3d.camera

local doc = {}

--- Changes the position of the current camera
-- @tparam number x the `x` position of the camera
-- @tparam number y the `y` position of the camera
-- @tparam number y the `z` position of the camera
function doc.set_position(x,y,z) end

--- Changes the rotation of the current camera
-- @tparam[1] number dx the `x` rotation of the camera
-- @tparam[1] number dy the `y` rotation of the camera
-- @tparam[1] number dz the `z` rotation of the camera
-- @tparam[2] number x the quaternion vector `x` position
-- @tparam[2] number y the quaternion vector `y` position
-- @tparam[2] number z the quaternion vector `z` position
-- @tparam[2] number w the rotation along the quaternion vector
function doc.set_rotation(dx,dy,dz,m) end

--- Makes a new @{camera_object|Camera} object with the given parameters
-- @tparam number x the `x` position of the camera
-- @tparam number y the `y` position of the camera
-- @tparam number y the `z` position of the camera
-- @tparam number dx the `x` rotation of the camera
-- @tparam number dy the `y` rotation of the camera
-- @tparam number dz the `z` rotation of the camera
-- @treturn camera PID of the coroutine. This shouldn't change.
-- @see camera_object
function doc.make(x,y,z,dx,dy,dz) end

--- Sets the current camera to the given @{camera_object|camera object}
-- @param camera the camera object
-- @see camera_object
function doc.set(cam) end

--- Returns the current camera object
-- @return Current camera object
-- @see camera_object
function doc.get() end

return doc