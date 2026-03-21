package main
import "fmt"

func fibonacci (n int) {
  a, b := 0, 1
  i := 0
  
  for i < n {
    fmt.Println(a)
    
    a, b = b, a + b
    i++
  }
  
}

func main() {
  var n int
  
  fmt.Println("Digite quantos números da sequência:")
  fmt.Scanln(&n)
  
  fibonacci(n)
}