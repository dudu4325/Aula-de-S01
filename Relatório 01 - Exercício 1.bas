Dim nota1  As double
Dim nota2 As double
Dim nota3 As double
Dim peso1 As double
Dim peso2 As double
Dim peso3 As double
Dim media As double

Input "Valor das notas: ", nota1, nota2, nota3

Input "Valor dos pesos respectivamente", peso1, peso2, peso3

media = (nota1*peso1+nota2*peso2+nota3*peso3)/(peso1+peso2+peso3)

if media >= 70 then
  Print "Aprovado direto"
else
  Print "Reprovado direto"
end if
sleep