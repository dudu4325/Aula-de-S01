function calculadoraMais(n1, n2)
  local result = n1 + n2
  return result
end

function calculadoraMenos(n1, n2)
  local result = n1 - n2
  return result
end

function calculadoVezes(n1, n2)
  local result = n1 * n2
  return result
end

function calculadoraDividido(n1, n2)
  local result = n1 / n2
  return result
end

print ("Digite o número N1 e N2: ")
local N1 = tonumber(io.read())
local N2 =tonumber(io.read())

print ("Digite o operador(+, -, *, /): ")
local ope = io.read()

if ope == "+" then
  print(calculadoraMais(N1, N2))
elseif ope == "-" then
  print(calculadoraMenos(N1, N2))
elseif ope == "*" then
  print(calculadoVezes(N1, N2))
elseif ope == "/" then
  print(calculadoraDividido(N1, N2))
else
  print("O operador inserido é inválido")
end  

