# wz-notes | Simple Metadata Notes

A lightweight, standalone note-taking system built specifically for ox_inventory. This script allows players to turn blank paper into persistent, readable notes using inventory metadata.


## Features

- **Metadata Powered**: Notes store their text directly in the item metadata, meaning they can be traded, dropped, or stolen while keeping their message.
- **Live Tooltips**: Uses displayMetadata so players can see a preview of the note just by hovering over it in their inventory.
- **Standalone**: No framework dependencies (No QB/ESX/Qbox required), as long as you have ox_inventory and ox_lib.
- **Security**: Built-in character limits and basic sanitization to prevent inventory bloat.

## Installation

1. Download the resource and place it in your resources folder.
2. Add the images (paper.png and note.png) to ox_inventory/web/images/.
3. Add the following items to your ox_inventory/data/items.lua:

```lua
    ['paper'] = {
        label = 'Blank Paper',
        weight = 10,
        stack = true,
        close = true,
        description = 'A blank piece of paper, maybe you could write on it?',
    },
    ['note'] = {
        label = 'Written Note',
        weight = 10,
        stack = false,
        close = true,
        description = 'A note with something written on it.',
    },
```


## Requirements

[ox_inventory](https://github.com/CommunityOx/ox_inventory)

[ox_lib](https://github.com/CommunityOx/ox_lib)
