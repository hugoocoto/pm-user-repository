-- Pinned to 26.08.1: KDE publishes the AppImage under a versioned path with no
-- stable "latest" URL. Bump both version strings for a new release.
local series  = "26.08"
local version = "26.08.1"

return {
    url   = "https://download.kde.org/stable/kdenlive/" .. series .. "/linux/kdenlive-" .. version .. "-x86_64.AppImage",
    name  = "kdenlive",
    build = "chmod +x kdenlive",
}
