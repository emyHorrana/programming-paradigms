print ("Digite o expoente inicial (M):")
local m = tonumber(io.read())
print ("Digite o expoente final (N):")
local n = tonumber(io.read())
print ("Digite a base:")
local base = tonumber(io.read())

for i = m, n do
    print(base.. " ^ " .. i .. " = " .. (3 ^ i))
end