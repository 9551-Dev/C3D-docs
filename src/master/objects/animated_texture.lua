--- the animateds_texture objects are used for well.. having objects have textures with animations. duh. it does this by emulating a standard texture object but changes its fields depending on time
-- @module[kind=objects] animated_texture

--- the methods for the animated_texture object
local doc = {}
--- the fields stored in the animated_texture object
local fields = {}

--- allows you to enable and disable the autoplay mode of this animated texture, resets the state of the animation to start
-- @tparam boolean enable whether to enable or disable autoplay
-- @treturn animated_texture returns self. used for chaining functions.
function doc:autoplay(enable)
end

--- plays the animation once and then stops.
-- @treturn animated_texture returns self. used for chaining functions.
function doc:play()
end

--- stats playing the animation. Continues where it left off.
-- @treturn animated_texture returns self. used for chaining functions.
function doc:resume()
end

--- stops playing the animation. keeps its current state.
-- @treturn animated_texture returns self. used for chaining functions.
function doc:pause()
end

--- changes the lenght of the animation.
-- @tparam number time the amount of ms the animation *should* take to play.
-- @treturn animated_texture returns self. used for chaining functions.
function doc:change_duration(time)
end

--- changes the current frame of the animation
-- @tparam number frame the frame to set the animation tp
-- @treturn animated_texture returns self. used for chaining functions.
function doc:set_frame(frame)
end


--- the width of the sprites
fields.w = {}
--- the height of the sprites
fields.h = {}
--- the amount of frames (sprites on the y axis)
fields.sprites_collum = {}
--- table with all of the sprites from the sprite sheet
fields.sprites = {}
--- lenght of the animation in milliseconds
fields.duration = {}
--- X index of this animation in the sprite sheet
fields.sprite_x = {}
--- the epoch time since the texture frame was last changed
fields.last_updated = {}
--- current frame the animation is on
fields.current_sprite_index = {}
--- pixels of the current sprite displayed
fields.pixels = {}
--- whether the animation is currently playing
fields.running = {}

doc.fields = fields
return doc