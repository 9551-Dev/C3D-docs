--- the mouse module is used for getting inputs from the mouse. similiar to the @{c3d.keyboard|keyboard} module
-- @module[kind=modules] c3d.mouse

local doc = {}

--- returns the current mouse position
-- @treturn number the current `x` position of the mouse
-- @treturn number the current `y` position of the mouse
function doc.get_position()
end

--- returns the `x` position of the mouse
-- @treturn number the `x` position of the mouse
function doc.get_x()
end

--- returns the `y` position of the mouse
-- @treturn number the `y` position of the mouse
function doc.get_y()
end

--- returns if all of the inputed mouse buttons are held down
-- @tparam number ... all of the mouse buttons to check
-- @treturn boolean whether all of the inputed mouse buttons are held down
function doc.is_down(...)
end

return doc