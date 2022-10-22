---
module: [kind=examples] example.thread
---

## the thread library is meant to be used for multitasking and sending data across your program using channels.
##
the @{c3d.thread|the thread module}
# showcase

```lua
local epic_thread = c3d.thread.new_thread([[
    local c = c3d.thread.get_channel("load_channel")
    for i=1,10 do
        c:supply(i) -- adds a value to the channel and waits for it to be read
    end
]]) -- makes a thread that adds 10 numbers to the load_channel

function c3d.load()
    epic_thread:start() -- marks the thread to be executed
end

function c3d.update()
    local c = c3d.thread.get_channel("load_channel")
    if c.get_count() > 0 then -- checks how many things are saved in the queue
        print(c:pop()) -- reads a value from the channel
    else error("finished reading the load channel",0) end
end
```