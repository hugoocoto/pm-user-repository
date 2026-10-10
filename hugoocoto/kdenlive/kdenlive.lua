-- KDE has no stable "latest" AppImage URL, so resolve it from the directory
-- listings: newest release series first, then the newest AppImage inside it.
local base = "https://download.kde.org/stable/kdenlive/"

local function listing(url)
    local f = assert(io.popen("curl -sL " .. url))
    local body = f:read("*a")
    f:close()
    return body
end

-- Compares dotted versions numerically ("26.10" > "26.8", "26.08.10" > "26.08.9").
local function newer(a, b)
    local ai, bi = a:gmatch("%d+"), b:gmatch("%d+")
    while true do
        local x, y = ai(), bi()
        if not x or not y then return x ~= nil end
        if tonumber(x) ~= tonumber(y) then return tonumber(x) > tonumber(y) end
    end
end

local function newest(body, pattern)
    local best
    for v in body:gmatch(pattern) do
        if not best or newer(v, best) then best = v end
    end
    return best
end

local series = assert(newest(listing(base), 'href="(%d+%.%d+)/"'),
    "kdenlive: can't resolve the latest release series")
local version = assert(newest(listing(base .. series .. "/linux/"), 'kdenlive%-([%d%.]+)%-x86_64%.AppImage'),
    "kdenlive: can't resolve the latest AppImage")

return {
    url   = base .. series .. "/linux/kdenlive-" .. version .. "-x86_64.AppImage",
    name  = "kdenlive",
    build = "chmod +x kdenlive",
}
