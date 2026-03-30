package main
import "fmt"

func ValidarUsuario (senha string) (bool, string){
  if len(senha) > 7 {
    return true, "Usuário criado com sucesso"
  } else {
    return false, "Erro: O nome de usuário é muito curto"
  }
}

func main() {
  
  var nome string
  var status bool
  var texto string
  
  for status == false {
    fmt.Println("Digite a usuário:")
    fmt.Scanln(&nome)
    
    status, texto =  ValidarUsuario(nome) 
    
    fmt.Println(texto)
  }

}
