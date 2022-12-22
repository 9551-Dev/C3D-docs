---
module: [kind=misc] texture_load_settings
---

## The settings used when loading images using the graphics module
@{c3d.graphics|c3d.graphics}

##
## different formats with different settings have diffirent outputs. this documents them

:::warning mixing mipmap levels
you wanna make sure you never mix mipmap levels of 2 textures, For example with transparency masks. You always want the mask
to have the same amount of mipmap levels as the texture does otherwise you will run into problems!
:::

# .ppm
## options:
- **`quantize_amount`** [number] the iteration amount for quantizing the image (0-4, the 4 limit is because if you use > 4 output will be > 16 colors) the color output from can be calculated using 2^quantize_amount
- **`dither`**          [boolean] dithers the image with the current palette
- **`transparency`**    [table] the image to apply as a transparency map
- **`mipmap_levels`**   [number] the amount of mipmap levels to generate for the given texture

## :get_out() results
- **`quantize_amount`** -> quantized [@{palette|palette object}]

# .cimg2
## options
- **`transparency`**    [table] the image to apply as a transparency map
- **`mipmap_levels`**   [number] the amount of mipmap levels to generate for the given texture

# .nfp
- **`transparency`**    [table] the image to apply as a transparency map
- **`mipmap_levels`**   [number] the amount of mipmap levels to generate for the given texture

## examples
```lua
local epik_texture = c3d.graphics.load_texture("epik.ppm",{quantize_amount=2,dither=true}) -- loads the texture with the given settings
    :get_out().quantized:apply_palette() -- gets the output and runs the apply_palette method of the palette object
```

```lua
local epik_texture = c3d.graphics.load_texture("epik.nfp",{
    transparency = c3d.graphics.load_texture("transparency.nfp")
}) -- loads a texture and asigns another as its transparency map
```

```lua
local epik_texture = c3d.graphics.load_texture("epik.nfp",{
    transparency = c3d.graphics.load_texture("transparency.nfp",{mipmap_levels=5}),
    mipmap_levels=5
}) -- loads a texture and asigns another as its transparency map
```