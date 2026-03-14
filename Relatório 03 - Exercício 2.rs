use std::io;

fn eh_impar(numero: i32) -> bool {
  numero % 2 != 0
}
 
fn main() {
  
  let mut escolha = String::new();
  let mut entrada = String::new();

  println!("Jogador1: digite um numero:");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let num1: i32 = entrada.trim().parse().expect("Numero invalido");
  
  entrada.clear();
  
  println!("Jogador 2: digite um numero:");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let num2: i32 = entrada.trim().parse().expect("Numero invalido");
  
  println!("Jogador1: escolha 'par' ou 'impar':");
  io::stdin().read_line(&mut escolha).expect("Erro");
  let escolha = escolha.trim();
  
  let soma = num1 + num2;
    
  if (eh_impar(soma) && escolha == "impar") || (!eh_impar(soma) &&  escolha == "par")  {
    println!("O jogador 1 venceu com a soma {}", soma);
  }
  else{
    println!("O jogador 2 vencou com a soma {}", soma);
  }
}