use std::io;

fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
  for i in limite_inferior..=limite_superior {
    if i % numero == 0 {
      println!("{}", i);
    }
  }
}
 
fn main() {
  let mut entrada = String::new();

  println!("Digite o numero");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let numero: i32 = entrada.trim().parse().expect("Numero invalido");
  
  entrada.clear();
  
  println!("Digite o limite inferior");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let inferior: i32 = entrada.trim().parse().expect("Numero invalido");
  
  entrada.clear();
  
  println!("Digite o limite superior");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let superior: i32 = entrada.trim().parse().expect("Numero invalido");
  
  entrada.clear();
  
  imprimir_multiplos(numero, inferior, superior);
}