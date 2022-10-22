---
module: [kind=callbacks] c3d.quit
---

Used for detecting when the user tries to quit the application by terminating it
using the Ctrl+T shortcut.

you can also use it to stop the termination or add something like a confirmation dialog.
return whether the applications should be terminated

## returns
- **boolean**: whether C3D should be exited

```lua
local allow_quit = false
function c3d.quit()
    if not allow_quit then
        epic_exit_confirm_func("are you sure you want to quit?")
    end

    return allow_quit
end
```
