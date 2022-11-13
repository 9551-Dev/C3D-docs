---
module: [kind=event-callbacks] c3d.resize
---

Callback that gets fired when a change in the terminal size is detected. works by comparing size not using events. so its very reliable.
Accounts for CraftOS pc graphics mode

## arguments
- **w** [number]: the width the terminal was resized to
- **h** [number]: the width the terminal was resized to

```lua
function c3d.resize(w,h)
    error("How dare you resize the terminal to " .. w .. "," .. h)
end
```