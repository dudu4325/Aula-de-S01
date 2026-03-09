print ("Digite o número N: ")
local n = tonumber(io.read())
local todos = {}
local impar = {}
local number

for i = 1, n do
  print ("Fale um número para adicionar na tabela: ")
  number = tonumber(io.read())
  table.insert(todos, number)
end

for i = 1, #todos do
  if todos[i] % 2 ~= 0 then
    table.insert(impar, todos[i])
  end
end

for i = 1, #impar do
  print(impar[i])
end
