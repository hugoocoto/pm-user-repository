# zrun

A fuzzy-finding application launcher — something between dmenu, rofi, and tofi. Written in Zig with Raylib.

## Installation

```lua
ur.Fetch { user = "hugoocoto", file = "zrun/zrun.lua" }
```

## Usage

```
zrun
```

Opens a search bar to fuzzy-find and launch applications. Sort order is based on a matching-gap heuristic.
