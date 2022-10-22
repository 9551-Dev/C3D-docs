---
module: [kind=callbacks] c3d.run
---

The default main loop that the library uses for frame updates.
There is a default function set if you dont set one.
But you can modify it to your likings to perhaps inject code to the C3D code itself.
The default loop is saved at `C3D/core/uloop.lua`

## returns
- **function**: the main update function to get loaded

showcase with the default function
```lua
function c3d.run()
    if c3d.load then c3d.load(table.unpack(args,1,args.n)) end
    if c3d.timer then c3d.timer.step() end
    local dt = 0
    return function()
        if c3d.event then
            for name, a,b,c,d,e,f in c3d.event.poll() do
                if name == "quit" then
                    if not c3d.quit or not c3d.quit() then
                        return a or 0
                    end
                end
                c3d.handlers[name](a,b,c,d,e,f)
            end
        end
        if c3d.timer then dt = c3d.timer.step() end
        if c3d.update then c3d.update(c3d.timer.get_average_delta()) end
        c3d.graphics.clear_buffer(c3d.graphics.get_bg())
        if c3d.render then c3d.render() end
        c3d.graphics.render_frame()
        if c3d.timer then c3d.timer.sleep(c3d.sys.get_bus().sys.frame_time_min) end
        if c3d.postrender then c3d.post_render(c3d.sys.get_bus().graphics.display_source) end
    end
end
```