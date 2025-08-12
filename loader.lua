-- Transparent, debuggable loader (use responsibly)
local function safeLoad(url)
    local ok, body = pcall(function() return game:HttpGet(url) end)
    if not ok or not body then
        warn("HttpGet failed for "..tostring(url).." -> "..tostring(body))
        return
    end

    local load_fn = loadstring or load
    if not load_fn then
        warn("No loadstring/load available in this environment.")
        return
    end

    local fn, err = load_fn(body)
    if not fn then
        warn("Compile error for "..tostring(url).." -> "..tostring(err))
        return
    end

    local ran, runerr = pcall(fn)
    if not ran then
        warn("Runtime error in "..tostring(url).." -> "..tostring(runerr))
    end
end

-- run both at (almost) the same time
local url1 = "https://lunor.dev/loader"
local url2 = "https://raw.githubusercontent.com/Updates-Script/Updated/refs/heads/main/Script.lua"

task.spawn(function() safeLoad(url1) end)
task.spawn(function() safeLoad(url2) end)
