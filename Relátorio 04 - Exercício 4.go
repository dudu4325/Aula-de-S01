package main
import "fmt"

func verificarLogin(usuario, senha string) bool {
  if usuario == "senha" && senha == "admin" {
    return true
  } else {
    return false
  }
}

func main() {
  var Usuario string
  var Senha string
  
  for {
    fmt.Println("Digite o usuario: ")
    fmt.Scanln(&Usuario)
    
    fmt.Println("Digite a senha: ")
    fmt.Scanln(&Senha)
    
    if verificarLogin(Usuario, Senha) {
      fmt.Print("Login bem-sucedido!") 
      break
    } else {
      fmt.Println("Usuário ou senha incorretos. Tente novamente")
    }
  }
  
}