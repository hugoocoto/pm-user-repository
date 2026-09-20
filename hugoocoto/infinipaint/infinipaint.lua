local function latest_tag()
    local f = assert(io.popen("curl -sI https://github.com/ErrorAtLine0/infinipaint/releases/latest"))
    local headers = f:read("*a")
    f:close()
    return assert(headers:lower():match("\nlocation:%s+%S+/releases/tag/(v[%w%._%-]+)"),
        "infinipaint: can't resolve the latest release")
end

local p = io.popen("uname -m")
local machine = p and p:read("*l") or ""
if p then p:close() end

local arch = ({
    x86_64 = "x86_64",
    aarch64 = "arm64",
    arm64 = "arm64",
})[machine]
assert(arch, "infinipaint: unsupported architecture " .. machine)

local tag = latest_tag()
local version = tag:gsub("^v", "")
local asset = "infinipaint-" .. version .. "-linux-" .. arch .. ".AppImage"

return {
    url   = "https://github.com/ErrorAtLine0/infinipaint/releases/download/" .. tag .. "/" .. asset,
    name  = "infinipaint",
    build = "chmod +x infinipaint",
}
