print ("Digite o número M e N: ")
local m = tonumber(io.read())
local n = tonumber(io.read())

print("Digite qual o X: ")
local x =tonumber(io.read())

for i = m, n do
  print(x*i)
end
