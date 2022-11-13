--- You can use sprite_sheet to split a single texture into multiple smaller ones. thus you can use them to store all of your textures in a single texture atlas
-- @module[kind=objects] sprite_sheet

--- the methods for the sprite_sheet object
local doc = {}
--- the fields stored in the sprite_sheet object
local fields = {}

--- creates an @{animated_texture|animated texture} object from this sprite sheet
-- @tparam number collumn collumn the animated texture should use for the animation
-- @tparam number duration duration of the animation 
-- @treturn animated_texture an animated texture object 
function doc:make_animation()
end

--- returns a specific texture saved in the sprite sheet.
-- @tparam number sprite_sheet_x `x` position of the texture in the sprite sheet
-- @tparam number sprite_sheet_y `y` position of the texture in the sprite sheet
-- @treturn texture a texture object
function doc:get(sprite_sheet_x,sprite_sheet_y)
end

--- a 2D map of all the textures saved in the sprite sheet
fields.sprites = {}
--- the width of individual sprites in pixels
fields.sprite_width = {}
--- the height of individual sprites in pixels
fields.sprite_height = {}
--- the amount of sprites saved in the sprite sheet in the `x`
fields.sprites_x = {}
--- the amount of sprites saved in the sprite sheet in the `y`
fields.sprites_y = {}

doc.fields = fields
return doc