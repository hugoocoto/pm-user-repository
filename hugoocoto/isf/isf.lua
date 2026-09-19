-- The static binary from isf's nightly release: it runs on any Linux of its
-- architecture, and the same file can be copied to the remote, which needs isf
-- too. (The release also has an AppImage, but it would need FUSE on both
-- machines and adds startup time for nothing: isf has no libraries to bundle.)

local p = io.popen("uname -m")
local arch = p and p:read("*l") or "x86_64"
if p then p:close() end

return {
    url   = "https://github.com/hugoocoto/isf/releases/download/nightly/isf-" .. arch,
    name  = "isf",
    build = "chmod +x isf",
}
