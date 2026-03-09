function maior(ARRAY)
  local maior = -9999
  
  for i = 1, #ARRAY do
    if ARRAY[i] >= maior then
      maior = ARRAY[i]
    end
  end
  
  return maior
end

print ("Digite o número N: ")
local n = tonumber(io.read())
local array = {}
local number

for i = 1, n do
  print ("Fale um número para adicionar na tabela: ")
  number = tonumber(io.read())
  table.insert(array, number)
end

number = maior(array)

print("O maior número é " .. number)
