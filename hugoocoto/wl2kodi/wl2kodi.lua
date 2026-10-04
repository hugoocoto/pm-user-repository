-- wl2kodi is a single bash script, so there is nothing to build: the archive
-- only has to be unpacked and the script made executable. The launcher and
-- menu entry that install.sh adds are left out; this installs the tool alone.
return require('ur').Github {
    user = "hugoocoto",
    repo = "wl2kodi",
    cmd  = "chmod +x wl2kodi",
}
