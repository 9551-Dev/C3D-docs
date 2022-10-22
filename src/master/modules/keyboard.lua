--- The keyboard module is used for checking for inputs and interactions from the user
-- @module[kind=modules] c3d.keyboard

local doc = {}

--- checks whether the inputed keys are currently held down
-- @tparam string ... the keys to check
-- @treturn boolean whether the keys are held down
function doc.is_down(...)
end

--- returns whether the @{c3d.textinput,c3d.textinput event} is enabled
-- @treturn boolean whether textinput event is enabled
function doc.has_text_input()
end

--- sets whether the @{c3d.textinput,c3d.textinput event} is enabled
-- @tparam boolean enable whether to enable the textinput event
function doc.set_text_input(enable)
end

return doc