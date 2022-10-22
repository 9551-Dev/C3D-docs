---
module: [kind=callbacks] c3d.threaderror
---

This callback is called when a thread object from the @{c3d.thread|thread module} thread object
has an exception happen.
You can use it to perhaps add custom error handling and error screens

It also gets provided with the object of the thread that has errored.
As the second argument it gets the error message that happened in that thread.

## arguments
- **thread** [thread object]: a thread module object
- **msg** [string]:    the error message

```lua
function c3d.threaderror(thread,msg)
    print("Thread "..thread.." has errored: "..tostring(msg))
end
```