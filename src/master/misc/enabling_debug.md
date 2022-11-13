---
module: [kind=misc] enabling_debug
---
a small showcase of how to enable the C3D debug mode

# debug mode is a very useful tool when debugging plugins in C3D!
## how to enable it ?
there are 2 ways to do it. and these are
- modfying the C3D bus file
- modifying the bus on init

# modifying the C3D bus file (more detailed)
- open libC3D/core/bus.lua
- find field saying `debug=false,`
- changing it to `debug=true,`
- save and close. done easy as that

# you can also modify the BUS on init but that wont provide as many details.
how to do it ?
```lua
function c3d.init()
    local data_bus = c3d.sys.get_bus()
    data_bus.debug = true
end
```
note that this wont show details about the C3D internal plugin loading !