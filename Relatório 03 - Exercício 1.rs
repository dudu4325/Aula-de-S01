use std::io;

fn verificar_senha(senha: &str) -> bool {
  let mut numeros = 0;
  let mut maiuscula = 0;

  if senha.len() < 10 {
    return false;
  }

  for c in senha.chars() {
    if c.is_digit(10) {
      numeros += 1;
    }

    if c.is_ascii_uppercase() {
       maiuscula += 1;
    }
  }

  numeros >= 2 && maiuscula >= 1
}
 
fn main() {
  loop {
    let mut senha = String::new();

    println!("Digite uma senha:");

    io::stdin().read_line(&mut senha).expect("Erro ao ler a senha");

    let senha = senha.trim();

    if verificar_senha(senha) {
      println!("A senha e valida, seja bem vindo!");
      break;
    }
    else {
      println!("Tente novamente.");
    }
  }
}