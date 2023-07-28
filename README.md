
# Installation

Create a folder in a global, generic path, for example: c:\lua-definitions\

git clone this repo under this generic path, so it ends up like: c:\lua-definitions\takp2-definitions (this will be used in the settings.json noted below)

[Get vscode](https://code.visualstudio.com/download)

Under extensions, [find the sumneko 'lua' extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)

**NOTE**: Be sure to disable the spire extension, it will clash with this extension

Open your quests folder as a workspace by dragging the quests folder into your vscode window.

Create a .gitignore if one doesn't already exist, and add .vscode/ if it doesn't already have it

<img width="223" alt="Screen Shot 2023-01-19 at 9 20 15 PM" src="https://user-images.githubusercontent.com/845670/213623305-a3198d90-7234-435c-af00-7928d3d61eb1.png">

Create a new folder called .vscode/

Inside .vscode/ create a file called settings.json

<img width="140" alt="Screen Shot 2023-01-19 at 9 19 42 PM" src="https://user-images.githubusercontent.com/845670/213623350-e64f1a7d-058f-4c15-9bee-e8d86188fc2b.png">

Inside it, add these settings, changing the c:\src\lua-definitions\takp2-definitions path to where you cloned this repository
```json
{
    "Lua.runtime.version": "Lua 5.1",
    "Lua.workspace.library": [
        "c:\\src\\lua-definitions\\takp2-definitions"
    ],
    "Lua.diagnostics.disable": [
        "lowercase-global"
    ],
}
```

Inside an existing NPC lua script, add a param comment
```lua
---@param e NPCEventSay
function event_say(e)
```

This will give context on the e argument

<img width="486" alt="Screen Shot 2023-01-19 at 9 22 03 PM" src="https://user-images.githubusercontent.com/845670/213623682-13c53e4b-7970-4613-8dcf-df715c87b259.png">

That's it!

If you find errors you can report them in issues or ping Xackery on discord


