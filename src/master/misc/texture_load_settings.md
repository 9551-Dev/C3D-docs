---
module: [kind=misc] texture_load_settings
---

## The settings used when loading images using the graphics module
@{c3d.graphics|c3d.graphics}

##
## diffirent formats with diffirent settigns have diffirent outputs. this documents them

# .ppm
## options:
- **`quantize_amount`** [number] the iteration amount for quantizing the image (0-4, the 4 limit is because if you use > 4 output will be > 16 colors) the color output from can be calculated using 2^quantize_amount
- **`dither`**          [boolean] dithers the image with the current palette

## :get_out() results
- **`quantize_amount`** -> quantized [@{palette|palette object}]
- **`dither`** -> none

## examples
```lua
local epik_texture = c3d.graphics.load_texture("epik.ppm",{quantize_amount=2,dither=true}) -- loads the texture with the given settings
    :get_out().quantized:apply_palette() -- gets the output and runs the apply_palette method of the palette object
```