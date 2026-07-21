# zrun

Fuzzy-finding application launcher, sitting somewhere between dmenu, rofi, and tofi. Written in Zig with [Raylib](https://www.raylib.com/). Source at [hugoocoto/zrun](https://github.com/hugoocoto/zrun).

## Install

```lua
ur.Fetch { user = "hugoocoto", file = "zrun/zrun.lua" }
```

## Use

```
zrun
```

Opens a search bar to fuzzy-find and launch applications. Sort order uses a matching-gap heuristic.
