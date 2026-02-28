Dim senha As integer = 4321
Dim tentativa As integer = 1

While senha <> tentativa
  Input "Digite a senha: ", tentativa
  
  if senha <> tentativa then
    Print "Senha incorreta. Tente novamente"
  end if
Wend

Print "Acesso liberado"
