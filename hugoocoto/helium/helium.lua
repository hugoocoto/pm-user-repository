-- Uses the release tarball instead of the AppImage: the AppImage is mounted
-- through FUSE on every launch, which makes startup ~4s slower. pm installs a
-- single file, so Helium is unpacked outside the cache and the artifact is a
-- small launcher script.

-- Asset names include the version, so there is no stable "latest" URL.
-- Resolve it from the redirect of /releases/latest instead.
local function latest_version()
    local f = assert(io.popen("curl -sI https://github.com/imputnet/helium-linux/releases/latest"))
    local headers = f:read("*a")
    f:close()
    return assert(headers:lower():match("\nlocation: %S+/releases/tag/(%S+)"),
        "helium: can't resolve the latest release")
end

local version = latest_version()
local tarball = "helium-" .. version .. "-x86_64_linux.tar.xz"

return {
    url      = "https://github.com/imputnet/helium-linux/releases/download/" .. version .. "/" .. tarball,
    name     = tarball,
    build    = "v=" .. version .. "\n" .. [[
        set -e
        opt="$HOME/.local/share/pm/opt"
        mkdir -p "$opt"
        rm -rf "$opt"/helium-*
        tar xJf "helium-$v-x86_64_linux.tar.xz" -C "$opt"
        printf '#!/bin/sh\nexec "%s" "$@"\n' "$opt/helium-$v-x86_64_linux/helium-wrapper" > helium
        chmod +x helium
        # Each version is cached in its own directory; drop the older ones.
        for d in ../helium-*-x86_64_linux.tar.xz; do
            [ "$d" = "../helium-$v-x86_64_linux.tar.xz" ] || rm -rf "$d"
        done
    ]],
    artifact = "helium",
}
