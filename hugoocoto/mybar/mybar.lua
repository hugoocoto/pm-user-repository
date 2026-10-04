-- pm only copies the binary into its bin dir, but mybar also needs its plugins:
-- the build installs modules/*.so into ~/.local/lib/mybar/modules, where mybar
-- looks for them. `install` replaces the files instead of rewriting them in
-- place, so updating does not crash a bar that is running.
return require('ur').Github {
    user = "hugoocoto",
    repo = "mybar",
    cmd  = 'make && install -Dm755 -t "$HOME/.local/lib/mybar/modules" modules/*.so',
}
