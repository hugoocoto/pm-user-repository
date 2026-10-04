-- send2kodi is a single Python script, so there is nothing to build: the
-- archive only has to be unpacked and the script made executable.
return require('ur').Github {
    user = "hugoocoto",
    repo = "send2kodi",
    cmd  = "chmod +x send2kodi",
}
