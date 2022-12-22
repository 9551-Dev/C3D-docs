--- The interact module allows you to get things from the 3D scene from screen coordinates. For example you can find what object was clicked by just inputed the screen click coordinates.
-- @module[kind=modules] c3d.interact

local doc = {}

--- allows you to disable and enable updating the screen -> scene information table.
-- @tparam boolean enable the state to set the updating to.
function doc.enable(enable)
end

--- returns the fragment data used when drawing the given pixel. Only works of instantiate_frag is enabled on the object. (translates from drawing char coord to pixel internally)
-- @tparam number x the `x` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @tparam number y the `y` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @treturn fragment the fragment passed to the fragment shader when this pixel was being drawn
function doc.get_fragment(x,y)
end

--- returns a @{triangle_table|triangle object} at the given screen coordinates. (translates from drawing char coord to pixel internally)
-- @tparam number x the `x` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @tparam number y the `y` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @treturn triangle the triangle table object at the given screen coordinates
function doc.get_triangle(x,y)
end

--- returns a @{scene_object|scene object} at the given screen coordinates. (translates from drawing char coord to pixel internally)
-- @tparam number x the `x` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @tparam number y the `y` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @treturn scene_object the scene object at the given screen coordinates
function doc.get_object(x,y)
end

--- returns a @{triangle_table|triangle object} at the given screen coordinates. (does not translate. ideal for things like CraftOS-pc graphicsm mode)
-- @tparam number x the `x` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @tparam number y the `y` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @treturn triangle the triangle table object at the given screen coordinates
function doc.get_triangle_pixel(x,y)
end

--- returns a @{scene_object|scene object} at the given screen coordinates. (does not translate. ideal for things like CraftOS-pc graphicsm mode)
-- @tparam number x the `x` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @tparam number y the `y` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @treturn scene_object the scene object at the given screen coordinates
function doc.get_object_pixel(x,y)
end

--- returns the fragment data used when drawing the given pixel. Only works of instantiate_frag is enabled on the object. (does not translate. ideal for things like CraftOS-pc graphicsm mode)
-- @tparam number x the `x` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @tparam number y the `y` screen coordinate of the character block. Taken for example from mouse_click event or the @{c3d.mousepressed|mousepressed callback}
-- @treturn fragment the fragment passed to the fragment shader when this pixel was being drawn
function doc.get_fragment_pixel(x,y)
end


return doc