# wallpaper

Set a desktop wallpaper on Wayland compositors. Backed by [swaybg](https://github.com/swaywm/swaybg). Built from the [wallpapers](https://github.com/hugoocoto/wallpapers) repo.

## Install

```lua
ur.Fetch { user = "hugoocoto", file = "wallpaper/wallpaper.lua" }
```

## Use

```
wallpaper <image-path>
```

Supports any image format swaybg handles. Works on Sway, Hyprland, and any compositor implementing `wlr-layer-shell`.
