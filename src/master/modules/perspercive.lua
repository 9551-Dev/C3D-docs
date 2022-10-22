--- the persperctive module is used for manipulating the cameras persperctive in the scene
-- @module[kind=modules] c3d.persperctive

local doc = {}

--- changes the FOV of the camera
-- @tparam number fov the FOV amount to set
function doc.set_fov(fov)
end

--- changes the near clipping plane position
-- @tparam number near clipping plane
function doc.set_near_plane(near)
end

--- changes the far clipping plane position
-- @tparam number far clipping plane
function doc.set_far_plane(far)
end

return doc