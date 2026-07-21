# zrun

Fuzzy-finding application launcher, sitting somewhere between dmenu, rofi, and tofi. Written in Zig with [Raylib](https://www.raylib.com/). Source at [hugoocoto/zrun](https://github.com/hugoocoto/zrun).

![Screenshot](https://raw.githubusercontent.com/hugoocoto/zrun/main/image1.png)

**Tech stack:** Zig, Raylib 6.0.

**Type:** GUI desktop application launcher.

## Install

ur.Fetch { user = "hugoocoto", file = "zrun/zrun.lua" }

## Use

```
zrun
```

Opens a search bar to fuzzy-find and launch applications. Sort order uses a matching-gap heuristic.
