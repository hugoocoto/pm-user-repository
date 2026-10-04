# mybar

Small Wayland status bar for wlroots compositors (Hyprland): one bar at the bottom of every monitor, configured in Lua and reloaded live when the config is saved. Modules are plugins (`.so` files): workspaces with app icons, window title, keyboard layout, volume, battery, network and clock. Source at [hugoocoto/mybar](https://github.com/hugoocoto/mybar).

**Tech stack:** C, wlr-layer-shell, fcft, pixman, LuaJIT (or Lua 5.1), librsvg + cairo (app icons, optional).

**Type:** Wayland status bar.

## Use

```
mybar                      # ~/.config/mybar/config.lua, else ./config.lua
mybar -c path/to/config.lua
```

The plugins are installed to `~/.local/lib/mybar/modules`. Copy `config.lua` from the repo to `~/.config/mybar/` to start. `pkill -USR1 mybar` forces a reload.

Build dependencies (Arch): `wayland wayland-protocols fcft pixman luajit librsvg cairo`.
