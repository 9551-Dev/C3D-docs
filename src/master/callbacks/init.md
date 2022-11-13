---
module: [kind=callbacks] c3d.init
---

Special callback dedicated to modifying things before C3D itself inicializes.
Mainly used for loading plugins using @{c3d.plugin.load|the plugin load function}


```lua
function c3d.init(msg)
    c3d.plugin.load(function()
        local very_epic_plugin = plug.new("epic")

        very_epic_plugin:register()
    end)
end
```