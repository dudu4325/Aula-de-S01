package main
import "fmt"

func main() {
  var lado1 int
  var lado2 int
  var lado3 int
  
  fmt.Println("Digite o lado 1: ")
  fmt.Scan(&lado1)

  fmt.Println("Digite o lado 2: ")
  fmt.Scan(&lado2)
  
  fmt.Println("Digite o lado 2: ")
  fmt.Scan(&lado3)
 
  
  if lado1 + lado2 >= lado3 && lado1 + lado3 >= lado2 && lado2 + lado3 >= lado1 {
    switch {
      case lado1 == lado2 && lado2 == lado3:
          fmt.Print("triangulo equilatero")
      case lado1 != lado2 && lado1 != lado3 && lado2 != lado3:
          fmt.Print("triangulo escaleno")
      default:
          fmt.Print("Triangulo isósceles")
    }
  } else {
    fmt.Print("Os lados que você colocou não formam um triangulo")
  }
}