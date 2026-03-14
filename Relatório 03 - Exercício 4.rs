use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
  let NPT: f64 = (nota1 + nota2)/2.0;
  let media: f64 = 0.3*nota3 + 0.7*NPT;
  
  if NPT >= 60.0 && nota3 >= 60.0 {
    println!("Parabens, voce passou com {} de media", media);
  }
  else{
    println!("Voce reprovou com {} de media", media);
  }
  
  media
}
 
fn main() {
  let mut entrada = String::new();

  println!("Digite a nota 1");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let nota1: f64 = entrada.trim().parse().unwrap_or(0.0);
  
  entrada.clear();
  
  println!("Digite a nota 2");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let nota2: f64 = entrada.trim().parse().unwrap_or(0.0);
  
  entrada.clear();
  
  println!("Digite a nota 3");
  io::stdin().read_line(&mut entrada).expect("Erro");
  let nota3: f64 = entrada.trim().parse().unwrap_or(0.0);
  
  calcular_media(nota1, nota2, nota3);
}