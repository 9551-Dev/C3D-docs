---
module: [kind=event-callbacks] c3d.textinput
---

A really simple callback function for when characters are pressed.
You can use it to detect when the user tries to type something in.
It pretty much is the "char" event, the callback gets provided with the string representing the character

## arguments
- **character** [string]: the pressed character

```lua
function c3d.textinput(char)
    print("Pressed character: "..char)
end
```