--- the camera objects are used along with the camera module. It defines the camera position and rotation
-- @module[kind=objects] camera_object

--- the methods for the camera object
local doc = {}
--- the fields stored in the camera object
local fields = {}

--- makes and changes the cameras position matrix to the given coordinates
-- @tparam number x the `x` position of the camera
-- @tparam number y the `y` position of the camera
-- @tparam number z the `z` position of the camera
-- @treturn camera the used camera object used for tailing methods
function doc:set_position(x,y,z)
end
--- makes and changes the cameras rotation matrix to either euler angles or a quaternion
-- @tparam[1] number euler_x the rotation around the x axis in degrees
-- @tparam[1] number euler_y the rotation around the y axis in degrees
-- @tparam[1] number euler_z the rotation around the z axis in degrees
-- @tparam[2] number quat_x the x position of the rotation direction vector
-- @tparam[2] number quat_y the y position of the rotation direction vector
-- @tparam[2] number quat_z the z position of the rotation direction vector
-- @tparam[2] number vec_rot the rotation around the direction vector in degrees
-- @treturn camera the used camera object used for tailing methods
function doc:set_rotation(...)
end

--- allows you to have the camera look at specific point from a specific position
-- @tparam number x the `x` coordinate of the camera
-- @tparam number y the `y` coordinate of the camera
-- @tparam number z the `z` coordinate of the camera
-- @tparam number at_x the `x` coordinate of the point the camera should look at
-- @tparam number at_y the `y` coordinate of the point the camera should look at
-- @tparam number at_z the `z` coordinate of the point the camera should look at
function doc:lookat_transform(x,y,z,at_x,at_y,at_z)
end

--- sets a custom transformation matrix to the camera
-- @tparam table transform the matrix to use as the camera transform
function doc:set_transform(transform)
end


--- the cameras rotation matrix
fields.rotation = {}
--- the cameras translation matrix
fields.position = {}
--- the optional transformation matrix
fields.transform = {}

doc.fields = fields
return doc