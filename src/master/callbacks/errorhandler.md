---
module: [kind=callbacks] c3d.errorhandler
---

A callback function which gets ran when your program causes an exception.
While also providing you with the error message so you can handle it somehow
instead of just going to the default C3D error screen.
returns whether this error should exit to the C3D error screen (true/false)

- gets ran when program errors
- used for custom error handling/screens
- returns whether to return to the default C3D error screen

## arguments
- **err** [any]: the error message
## returns
- **boolean**: whether the error should exit to the C3D error screen

```lua
function c3d.errorhandler(msg)
    print("Something fucked up.. "..tostring(msg))

    return false
end
```